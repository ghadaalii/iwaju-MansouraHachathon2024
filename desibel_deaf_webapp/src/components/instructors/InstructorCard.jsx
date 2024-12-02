import React from 'react';

export default function InstructorCard({ name, rating, treatmentCount, followers, description }) {
  return (
    <div className="bg-blue-50 p-6 rounded-lg">
      <div className="flex items-start space-x-4">
        <div className="w-1/3">
          <img
            src="/instructor-placeholder.jpg"
            alt={name}
            className="w-full h-32 object-cover rounded-full"
          />
        </div>
        <div className="w-2/3 space-y-2">
          <div className="flex justify-between items-center">
            <h3 className="text-lg font-semibold">{name}</h3>
            <div className="flex items-center">
              <svg className="h-5 w-5 text-yellow-400" fill="currentColor" viewBox="0 0 20 20">
                <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
              </svg>
              <span className="ml-1 text-sm font-medium">{rating}</span>
            </div>
          </div>
          <div className="flex space-x-4 text-sm text-gray-600">
            <span>{treatmentCount} Treatment</span>
            <span>{followers} Followers</span>
          </div>
          <p className="text-sm text-gray-700">{description}</p>
          <div className="flex space-x-4 mt-4">
            <button className="bg-blue-600 text-white px-4 py-2 rounded-md">
              Message
            </button>
            <button className="border border-blue-600 text-blue-600 px-4 py-2 rounded-md">
              Follow
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}