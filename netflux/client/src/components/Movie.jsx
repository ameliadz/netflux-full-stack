import React from 'react';

export default function Movie(props) {
  const { movie } = props;
  return (
    <div className="movie">
      <h2>{movie.title}</h2>
      <p>Directed by: {movie.director}</p>
      <p>{movie.year}</p>
      <p>{movie.plot}</p>
      <img src={movie.image} alt={`${movie.title} poster`}/>
    </div>
  )
}
