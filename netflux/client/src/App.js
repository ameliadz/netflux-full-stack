import React, { Component } from 'react';
import './App.css';
import Subscription from './components/Subscription';
import Movies from './components/Movies';
import Movie from './components/Movie';
import { Route, withRouter } from 'react-router-dom';

import { getSubscriptions, getMovies } from './services/apiHelper'

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      subscriptions: [],
      subscription: null,
      movies: [],
      movie: null
    }
    this.selectSubscription = this.selectSubscription.bind(this);
    this.selectMovie = this.selectMovie.bind(this);
  }

  async componentDidMount() {
    const subscriptions = await getSubscriptions();
    this.setState({ subscriptions });
  }

  async selectSubscription(subs) {
    const subscription = subs;
    const movies = await getMovies(subscription.id);
    this.setState({
      subscription: subscription,
      movies: movies
    })
    this.props.history.push(`/subscriptions/${subscription.id}`);
  }

  selectMovie(subscription, movie) {
    this.setState({ movie })
    this.props.history.push(`/subscriptions/${subscription.id}/movies/${movie.id}`)
  }

  render() {
    const { subscriptions, subscription, movies, movie } = this.state;
    return (
      <div className="App">
        <h1 onClick={() => this.props.history.push('/')}>NETFLUX</h1>
        <Route exact path="/" render={() => subscriptions.length ? subscriptions.map(subscription => <Subscription selectSubscription={this.selectSubscription}key={subscription.id} subscription={subscription} fetchMovies={this.fetchMovies} />) : null } />
        <Route exact path="/subscriptions/:subscription_id" render={() => <Movies subscription={subscription} movies={movies} selectMovie={this.selectMovie} />} />
        <Route exact path="/subscriptions/:subscription_id/movies/:movie_id" render={() => <Movie movie={movie} />} />
      </div>
    );
  }
}

export default withRouter(App);
