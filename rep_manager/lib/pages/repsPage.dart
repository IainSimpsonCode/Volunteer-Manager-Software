import 'package:flutter/material.dart';
import 'package:rep_manager/pages/import.dart';
import "package:rep_manager/themes/theme.dart";

const sampleData = [
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
  ["Iain Simpson", "BSc Software Engineering", "2nd"],
  ["Steph Lomas", "LLB Law", "Fdn"],
  ["Becky Best", "LLB Law", "2nd"],
  ["Krupa Raithatha", "BA Events Management", "3rd"],
  ["Hannah Mason", "BA Communication", "2nd"],
  ["Daisy Muir", "BA Fine Art", "2nd"],
  ["Ian Blease", "BA Managemet", "1st"],
  ["Liam Middleton", "BSc Web Development", "3rd"],
];

const groups = [
  [
    ["Course Reps"],
    [
      "Arts and Media",
      "Business",
      "Engineering and Computing",
      "Pharmacy and Biomedical Sciences",
      "Veterinary Medicine",
      "Law and Policing",
      "Psychology, Humanities and Languages",
      "Nursing and Midwifery",
      "Medicine and Dentistry",
      "Health, Social Work and Sport"
    ],
  ],
  [
    ["Senior Representatives"],
    [
      "School Presidents",
      "Satellite Campus Reps",
      "School Council",
    ],
  ],
  [
    ["Libaeration Reps"],
    ["Liberation Reps"],
  ]
];

//ignore: must_be_immutable
class repPage extends StatefulWidget {
  repPage({Key? key}) : super(key: key);

  List<int> selectedIndexes = [];
  List<String> filters = [];
  
  bool focusSelected = false;
  int focusedIndex = 0;
  bool focusEdit = false;

  bool? checkedValue = false;

  @override
  State<repPage> createState() => _repPageState();
}

class _repPageState extends State<repPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    Icon addNewRepIcon = const Icon(Icons.add, color: textColor,);
    Icon editRepDetailsIcon = const Icon(Icons.edit, color: textColor,);
    Icon addRepToGroupIcon = const Icon(Icons.drive_file_move);
    Icon downloadRepInformationIcon = const Icon(Icons.download);
    Icon deleteRepIcon = const Icon(Icons.delete);

    List<Widget> filterCheckboxes = [const SizedBox(height: 10,)];
    for (List<List<String>> group in groups) {
      filterCheckboxes.add(Row(
        children: [
          const SizedBox(width: 20,),
          Text(group[0][0], style: h3,),
        ],
      ));
      for (String filterItem in group[1]) {
        bool startValue = false;
        if (widget.filters.contains(filterItem)) {
          startValue = true;
        }

        filterCheckboxes.add(CheckboxListTile(
          dense: true,
          title: Text(
            filterItem,
            style: paragraph,
          ),
          value: startValue,
          onChanged: (newValue) {
            if (widget.filters.contains(filterItem)) {
              setState(() {
                widget.filters.remove(filterItem);
              });
            } else {
              setState(() {
                widget.filters.add(filterItem);
              });
            }
          },
          controlAffinity:
              ListTileControlAffinity.leading, //  <-- leading Checkbox
        ));               
      }
    }

    if (widget.selectedIndexes.length > 1) {
      editRepDetailsIcon = const Icon(
        Icons.edit,
        color: Color.fromARGB(100, 0, 0, 0),
      );
    }
    else {
      editRepDetailsIcon = const Icon(
        Icons.edit,
        color: textColor,
      );
    }

    int focusBoxHeight = 0;
    Container focusBox = Container(height: 0);

    List<Widget> staticInformation = [
      Text(studentData[widget.focusedIndex].studentNumber, style: paragraph,),
      Text(studentData[widget.focusedIndex].email, style: paragraph,),
      Text(studentData[widget.focusedIndex].mode, style: paragraph,),
      Text(studentData[widget.focusedIndex].campus, style: paragraph,),
      Text(studentData[widget.focusedIndex].level, style: paragraph,),
      Text(studentData[widget.focusedIndex].startDate, style: paragraph,),
      Text(studentData[widget.focusedIndex].endDate, style: paragraph,),
    ];
    List<Widget> editableInformation = [
      TextField(
        controller: TextEditingController()..text = 'G21002528',
        onChanged: (text) => {},
      ),
      TextField(
        controller: TextEditingController()..text = 'isimpson3@uclan.ac.uk',
        onChanged: (text) => {},
      ),
      TextField(
        controller: TextEditingController()..text = 'FT',
        onChanged: (text) => {},
      ),
      TextField(
        controller: TextEditingController()..text = 'Preston',
        onChanged: (text) => {},
      ),
      TextField(
        controller: TextEditingController()..text = 'UG',
        onChanged: (text) => {},
      ),
      TextField(
        controller: TextEditingController()..text = '1/7/24',
        onChanged: (text) => {},
      ),
      TextField(
        controller: TextEditingController()..text = '1/7/25',
        onChanged: (text) => {},
      ),
    ];

    List<Widget> focusBoxInformation = staticInformation;
    if (widget.focusEdit) {
      focusBoxInformation = editableInformation;
    }

    if (widget.focusSelected) {
      focusBoxHeight = 350;
      focusBox = Container(
        height: 350,
        width: MediaQuery.sizeOf(context).width - 400,
        decoration: const BoxDecoration(
          color: bodyColor,
          border: Border(
            top: BorderSide(width: 1, color: Colors.black),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Row(children: [
              const SizedBox(width: 10,),              
              GestureDetector(
                child: const Icon(Icons.close, size: 15,),
                onTap: () {
                  setState(() {
                    widget.focusSelected = false;
                  });
                },
              )
            ],),
            const SizedBox(height: 15,),
            Row(children: [
              const SizedBox(width: 35),
            
            
              // Rep Information
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //const SizedBox(height: 35),
                  Text('${studentData[widget.focusedIndex].firstName} ${studentData[widget.focusedIndex].lastName}', style: h3,),
                  Text(studentData[widget.focusedIndex].course, style: paragraph,),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("G Number:", style: paragraph,),
                          Text("Email:", style: paragraph,),
                          Text("Mode:", style: paragraph,),
                          Text("Campus:", style: paragraph,),
                          Text("Level:", style: paragraph,),
                          Text("Start Date:", style: paragraph,),
                          Text("End Date:", style: paragraph,),
                        ],
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: focusBoxInformation
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ), 
                      onPressed: () {
            
                      }, 
                      child: const Row(children: [ Icon(Icons.email), SizedBox(width: 10,), Text("Email") ])
                    ),
                    const SizedBox(width: 20,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () {},
                      child: const Row(children: [Icon(Icons.delete), SizedBox(width: 5,), Text("Delete")]))
                  ],)
                ],
              )
            ]),
          ],
        ),
      );
    }

    String selectAllText = "Select All";
    Icon selectAllIcon = Icon(Icons.circle_outlined);
    if (widget.selectedIndexes.isNotEmpty) {
      selectAllText = "${widget.selectedIndexes.length} Selected";
      selectAllIcon = const Icon(Icons.circle, color: primaryColor,);
    }

    return Row(children: [
      //Side Bar
      Container(
        width: 400,
        height: MediaQuery.sizeOf(context).height - 50,
        decoration: BoxDecoration(
          color: secondaryColor,
          border: Border.all(color: Colors.black, width: 2),
        ),
        child: ListView(children: filterCheckboxes)
      ),

      //Content
      Column( children: [
        Container(
          width: MediaQuery.sizeOf(context).width - 400,
          height: 50,
          color: secondaryColor,
          child: Row(
            children: [
              const Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
              GestureDetector(
                child: addNewRepIcon,
                onTap: () {

                },
              ),
              const Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
              GestureDetector(
                  child: editRepDetailsIcon,
                  onTap: () {
                    if (widget.selectedIndexes.length > 1)
                    {
                      // Do nothing if more than 1 person is selected
                    }
                    else {
                      setState(() {
                        widget.focusEdit = !widget.focusEdit;
                      });
                    }
                  },
                ),
              const Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
              GestureDetector(
                  child: addRepToGroupIcon,
                  onTap: () {},
                ),
              const Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
              GestureDetector(
                  child: downloadRepInformationIcon,
                  onTap: () {},
                ),
              const Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
              GestureDetector(
                  child: deleteRepIcon,
                  onTap: () {},
                ),
              const Expanded(child: SizedBox()),
              GestureDetector(
                child: selectAllIcon,
                onTap: () {
                  if (widget.selectedIndexes.isEmpty) {
                    setState(() {
                      for (int i = 0; i < studentData.length; i++) {
                        widget.selectedIndexes.add(i);
                      }
                    });
                  }
                  else {
                    setState(() {
                      widget.selectedIndexes.clear();
                    });
                  }
                },
              ),
              const Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0)),
              SizedBox(width: 120, child: Text(selectAllText, style: paragraph,)),
              const Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
            ]
          ),
        ),
        Container(
          width: MediaQuery.sizeOf(context).width - 400,
          height: MediaQuery.sizeOf(context).height - (100 + focusBoxHeight),
          child: ListView.builder(
            itemCount: studentData.length,
            itemBuilder: (BuildContext context, int index) {

              Icon circleIcon = const Icon(Icons.circle_outlined, color: textColor,);
              if (widget.selectedIndexes.contains(index)) { circleIcon = Icon(Icons.circle, color: primaryColor,); }

              return ListTile(
                leading: GestureDetector(
                  child: circleIcon,
                  onTap: () {
                    if (widget.selectedIndexes.contains(index)) {
                      setState(() {
                        widget.selectedIndexes.remove(index);
                      });
                    } else {
                      setState(() {
                        widget.selectedIndexes.add(index);
                      });
                    }
                  },
                ),
                title: Text('${studentData[index].firstName} ${studentData[index].lastName}', style: paragraph, maxLines: 2, softWrap: false,),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      studentData[index].course,
                      style: paragraph,
                      maxLines: 2,
                      softWrap: true, 
                    ),
                    const SizedBox(width: 20),
                    SizedBox(
                      width: 40,
                      height: 20,
                      child: Text(
                        studentData[index].year,
                        style: paragraph,
                      ),
                    )
                  ],
                ),
                shape: ContinuousRectangleBorder(
                  side: const BorderSide(color: secondaryColor, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ), 
                onTap: () {
                  setState(() {
                    widget.focusSelected = true;
                    widget.focusedIndex = index;
                  });
                },                
              );
            },
          )
        ),
        focusBox,
      ],)
    ],);
  }
}
