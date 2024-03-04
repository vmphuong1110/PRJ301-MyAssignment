/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author PHUONG
 */
public class Lession {
    private int id;
    private Date date;
    private boolean isAttended;
    private StudentGroup group;
    private TimeSlot slot;
    private Room room;
    private Lecturer lecturer;
    private ArrayList<Attendance> atts = new ArrayList<>();

    public Lession() {
    }

    public Lession(int id, Date date, boolean isAttended, StudentGroup group, TimeSlot slot, Room room, Lecturer lecturer) {
        this.id = id;
        this.date = date;
        this.isAttended = isAttended;
        this.group = group;
        this.slot = slot;
        this.room = room;
        this.lecturer = lecturer;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public boolean isIsAttended() {
        return isAttended;
    }

    public void setIsAttended(boolean isAttended) {
        this.isAttended = isAttended;
    }

    public StudentGroup getGroup() {
        return group;
    }

    public void setGroup(StudentGroup group) {
        this.group = group;
    }

    public TimeSlot getSlot() {
        return slot;
    }

    public void setSlot(TimeSlot slot) {
        this.slot = slot;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public Lecturer getLecturer() {
        return lecturer;
    }

    public void setLecturer(Lecturer lecturer) {
        this.lecturer = lecturer;
    }

    public ArrayList<Attendance> getAtts() {
        return atts;
    }

    public void setAtts(ArrayList<Attendance> atts) {
        this.atts = atts;
    }
    
}
