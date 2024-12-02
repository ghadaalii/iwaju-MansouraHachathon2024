import React from 'react';

const courseData = [
  {
    title: "Intro to Programming",
    instructor: "Ali Ahmed",
    subscribers: "1,855",
    image: "/course1.jpg"
  },
  {
    title: "Web Development Basics",
    instructor: "Sarah Johnson",
    subscribers: "1,255",
    image: "/course2.jpg"
  },
  {
    title: "Digital Marketing",
    instructor: "Mike Wilson",
    subscribers: "2,150",
    image: "/course3.jpg"
  }
];

function CourseCard({ title, instructor, subscribers, image }) {
  return (
    <div className="bg-white rounded-lg shadow-md overflow-hidden">
      <img src={image} alt={title} className="w-full h-48 object-cover" />
      <div className="p-4">
        <h3 className="font-semibold text-lg mb-2">{title}</h3>
        <p className="text-gray-600">By {instructor}</p>
        <p className="text-sm text-gray-500">{subscribers} subscribers</p>
      </div>
    </div>
  );
}

function Courses() {
  return (
    <section id="courses" className="py-16 px-8 bg-white">
      <h2 className="text-3xl font-bold text-center mb-12">Find Courses</h2>
      <div className="grid grid-cols-1 md:grid-cols-3 gap-8 max-w-6xl mx-auto">
        {courseData.map((course, index) => (
          <CourseCard key={index} {...course} />
        ))}
      </div>
    </section>
  );
}

export default Courses;