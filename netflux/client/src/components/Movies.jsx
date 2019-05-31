import React from 'react';
import Movie from './Movie';

export default function Movies(props) {
  const { movies, subscription } = props;
  return (
    <div>
      <h2 className="tier">{subscription.tier}</h2>
      {movies.map(movie => <h3 onClick={() => props.selectMovie(subscription, movie)}>{movie.title}</h3>)}
    </div>
  )
}


// {movies.map(movie => <Movie key={movie.id} movie={movie} />)}
