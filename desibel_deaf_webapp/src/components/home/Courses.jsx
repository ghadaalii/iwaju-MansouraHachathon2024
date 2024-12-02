import React from 'react';
import Section from '../ui/Section';
import Container from '../ui/Container';
import CourseCard from './CourseCard';
import { courses } from '../../utils/constants';

function Courses() {
  return (
    <Section id="courses">
      <Container>
        <h2 className="text-3xl font-bold text-center mb-12">
          Find Courses
        </h2>
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
          {courses.map((course) => (
            <CourseCard key={course.title} {...course} />
          ))}
        </div>
      </Container>
    </Section>
  );
}

export default Courses;