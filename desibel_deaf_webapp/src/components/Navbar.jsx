import React from 'react';

function Navbar() {
  return (
    <nav className="flex justify-between items-center p-4 bg-white shadow-sm">
      <div className="text-xl font-bold text-blue-600">DP</div>
      <div className="flex gap-6">
        <a href="#courses" className="hover:text-blue-600">Find Courses</a>
        <a href="#about" className="hover:text-blue-600">About us</a>
        <a href="#contact" className="hover:text-blue-600">Contact us</a>
      </div>
      <div className="flex gap-4">
        <button className="px-4 py-2 text-blue-600 hover:bg-blue-50 rounded">Sign in</button>
        <button className="px-4 py-2 bg-blue-600 text-white rounded hover:bg-blue-700">Sign up</button>
      </div>
    </nav>
  );
}

export default Navbar;