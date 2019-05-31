import React from 'react';

export default function Movies(props) {
  const { movies, subscription } = props;
  return (
    <div>
      <h2 className="tier">{subscription.tier}</h2>
      {movies.map(movie => <h3 key={movie.id} onClick={() => props.selectMovie(subscription, movie)}>{movie.title}</h3>)}
    </div>
  )
}
