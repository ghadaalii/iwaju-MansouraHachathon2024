import React from 'react';

function Section({ children, className = '', id }) {
  return (
    <section id={id} className={`py-16 ${className}`}>
      {children}
    </section>
  );
}

export default Section;