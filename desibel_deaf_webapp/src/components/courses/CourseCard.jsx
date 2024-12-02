import React from 'react';

export default function CourseCard({ title, instructor, subscribers, description, publishSchedule }) {
  return (
    <div className="bg-blue-50 p-6 rounded-lg">
      <div className="flex items-start space-x-4">
        <div className="w-1/3">
          <img
            src="/course-placeholder.jpg"
            alt={title}
            className="w-full h-32 object-cover rounded-md"
          />
        </div>
        <div className="w-2/3 space-y-2">
          <h3 className="text-lg font-semibold">{title}</h3>
          <p className="text-sm text-gray-600">By {instructor}</p>
          <p className="text-sm text-gray-600">{subscribers} subscribers</p>
          <p className="text-sm text-gray-700">{description}</p>
          <div className="flex justify-between items-center mt-4">
            <button className="bg-blue-600 text-white px-4 py-2 rounded-md">
              Subscribe
            </button>
            <div className="text-sm text-gray-600">
              <span className="font-medium">Publish</span>
              <br />
              {publishSchedule}
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}