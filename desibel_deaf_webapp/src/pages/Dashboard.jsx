import React from 'react';
import AuthenticatedNavbar from '../components/layout/AuthenticatedNavbar';
import SubNavbar from '../components/layout/SubNavbar';
import SearchBar from '../components/search/SearchBar';
import CourseCard from '../components/courses/CourseCard';
import InstructorCard from '../components/instructors/InstructorCard';
import Container from '../components/ui/Container';

const courses = [
  {
    title: "Intro to Programming",
    instructor: "Ali Ahmed",
    subscribers: "1,855",
    description: "Welcome to itwoc we aim to provide new learners an easy way to learn the art of code.",
    publishSchedule: "Every fri, sat"
  },
  {
    title: "Intro to Programming",
    instructor: "Ali Ahmed",
    subscribers: "1,855",
    description: "Welcome to itwoc we aim to provide new learners an easy way to learn the art of code.",
    publishSchedule: "Every fri, sat"
  }
];

const instructors = [
  {
    name: "Mrs.hind sameh",
    rating: "4.5",
    treatmentCount: "436",
    followers: "2600",
    description: "a professional sign language interpreter skilled in bridging communication between deaf and hearing communities."
  },
  {
    name: "Mrs.hind sameh",
    rating: "4.5",
    treatmentCount: "436",
    followers: "2600",
    description: "a professional sign language interpreter skilled in bridging communication between deaf and hearing communities."
  }
];

export default function Dashboard() {
  return (
    <div className="min-h-screen bg-gray-50">
      <AuthenticatedNavbar />
      <SubNavbar />
      <SearchBar />
      
      <Container>
        <section className="mb-12">
          <h2 className="text-2xl font-bold mb-6">Find Courses</h2>
          <div className="space-y-6">
            {courses.map((course, index) => (
              <CourseCard key={index} {...course} />
            ))}
          </div>
        </section>

        <section className="mb-12">
          <h2 className="text-2xl font-bold mb-6">Find Instructors</h2>
          <div className="space-y-6">
            {instructors.map((instructor, index) => (
              <InstructorCard key={index} {...instructor} />
            ))}
          </div>
        </section>
      </Container>
    </div>
  );
}