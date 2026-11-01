package com.transportplanner.model;

public class Route {
    private int id;
    private String source;
    private String destination;
    private double fare;
    private double distance;
    private String duration;

    public Route() {
    }

    public Route(int id, String source, String destination, double fare, double distance, String duration) {
        this.id = id;
        this.source = source;
        this.destination = destination;
        this.fare = fare;
        this.distance = distance;
        this.duration = duration;
    }

    // ----- ID -----
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    // ----- Source -----
    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    // ----- Destination -----
    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    // ----- Fare -----
    public double getFare() {
        return fare;
    }

    public void setFare(double fare) {
        this.fare = fare;
    }

    // ----- Distance -----
    public double getDistance() {
        return distance;
    }

    public void setDistance(double distance) {
        this.distance = distance;
    }

    // ----- Duration -----
    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    @Override
    public String toString() {
        return "Route{" +
                "id=" + id +
                ", source='" + source + '\'' +
                ", destination='" + destination + '\'' +
                ", fare=" + fare +
                ", distance=" + distance +
                ", duration='" + duration + '\'' +
                '}';
    }
}
