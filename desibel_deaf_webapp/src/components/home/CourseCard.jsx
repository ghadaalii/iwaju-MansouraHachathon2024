import React from 'react';

function CourseCard({ title, instructor, subscribers, image }) {
  return (
    <div className="bg-white rounded-lg shadow-md overflow-hidden hover:shadow-lg transition-shadow">
      <img 
        src={image} 
        alt={title} 
        className="w-full h-48 object-cover"
      />
      <div className="p-4">
        <h3 className="font-semibold text-lg mb-2">{title}</h3>
        <p className="text-gray-600">By {instructor}</p>
        <p className="text-sm text-gray-500">{subscribers} subscribers</p>
      </div>
    </div>
  );
}

export default CourseCard;