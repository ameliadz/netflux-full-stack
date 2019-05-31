import React from 'react';

export default function Subscription(props) {
  const { subscription } = props;
  return (
    <div className="subscription-type">
      <h2 className="tier" onClick={() => props.selectSubscription(subscription)}>{subscription.tier}</h2>
    </div>
  )
}
