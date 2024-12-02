import React from 'react';

function Hero() {
  return (
    <div className="flex items-center justify-between px-8 py-16 bg-gray-50">
      <div className="max-w-xl">
        <p className="text-blue-600 mb-2">Hundreds of People are here to help you</p>
        <h1 className="text-5xl font-bold mb-4">Nothing can stop you!</h1>
        <p className="text-gray-600 mb-8">
          "Empowering the Deaf community to thrive.
          A platform for learning, connection, and meaningful opportunities."
        </p>
        <div className="flex gap-4">
          <button className="px-6 py-3 bg-blue-600 text-white rounded hover:bg-blue-700">
            Find Courses
          </button>
          <button className="px-6 py-3 border border-blue-600 text-blue-600 rounded hover:bg-blue-50">
            Join us
          </button>
        </div>
      </div>
      <div className="w-96 h-96 bg-blue-100 rounded-lg overflow-hidden">
        <img 
          src="/hero-image.jpg" 
          alt="Person using sign language" 
          className="w-full h-full object-cover"
        />
      </div>
    </div>
  );
}

export default Hero;