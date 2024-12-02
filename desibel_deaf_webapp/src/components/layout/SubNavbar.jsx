import React from 'react';
import Container from '../ui/Container';

export default function SubNavbar() {
  return (
    <nav className="bg-white shadow-sm">
      <Container>
        <div className="flex space-x-8 h-14">
          <a href="#" className="inline-flex items-center px-1 pt-1 border-b-2 border-blue-600 text-sm font-medium text-gray-900">
            Home
          </a>
          <a href="#" className="inline-flex items-center px-1 pt-1 border-b-2 border-transparent text-sm font-medium text-gray-500 hover:border-gray-300 hover:text-gray-700">
            Courses
          </a>
          <a href="#" className="inline-flex items-center px-1 pt-1 border-b-2 border-transparent text-sm font-medium text-gray-500 hover:border-gray-300 hover:text-gray-700">
            Instructors
          </a>
          <a href="#" className="inline-flex items-center px-1 pt-1 border-b-2 border-transparent text-sm font-medium text-gray-500 hover:border-gray-300 hover:text-gray-700">
            AI tools
          </a>
        </div>
      </Container>
    </nav>
  );
}