<%@ Page Title="" Language="C#" MasterPageFile="~/AI.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Quick_AI_01.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <style>
        .responsive-map {
            overflow: hidden;
            padding-bottom: 56.25%;
            position: relative;
            height: 0;
            padding: 200px;
        }
            .responsive-map iframe {
                left: 0;
                top: 0;
                height: 100%;
                width: 100%;
                position: absolute;
            }
    </style>
    <div id="titlebar" style="margin-top: 7%;">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>Contact Us</h2>
                    <!-- Breadcrumbs -->
                    <nav id="breadcrumbs" class="dark">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li>Contact Us</li>
                        </ul>
                    </nav>

                </div>
            </div>
        </div>
    </div>
    <div class="container margin-bottom-50">
         <div class="responsive-map">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2822.7806761080233!2d-93.29138368446431!3d44.96844997909819!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x52b32b6ee2c87c91%3A0xc20dff2748d2bd92!2sWalker+Art+Center!5e0!3m2!1sen!2sus!4v1514524647889" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
</div>
        <div class="business-info">
            <div class="row">
                <div class="col-sm-8">
                    <div class="contactUs">
                        <h2 class="margin-bottom-30">Contact Us</h2>
                        <form id="contact-form" class="contact-form" name="contact-form" method="post" action="#">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input type="text" class="with-border" required="required" placeholder="Your Name" name="name">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input type="email" class="with-border" required="required" placeholder="Your E-Mail" name="email">
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <input type="text" class="with-border" required="required" placeholder="Subject" name="subject">
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <textarea name="message" id="message" required="required" class="with-border" rows="7" placeholder="Message"></textarea>
                                    </div>
                                </div>

                                <div class="col-sm-12">
                                    <div class="form-group">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <a href="Thanks!.aspx"  name="Submit" class="button">Send Message</a>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- Enquiry Form-->
                <!-- contact-detail -->
                <div class="col-sm-4">
                    <div class="dashboard-box margin-top-0">
                        <div class="headline">
                            <h3>Get In Touch</h3>
                        </div>
                        <div class="content with-padding">
                            Please get in touch and our expert support team will answer all your questions.                       
                        </div>
                    </div>
                    <div class="dashboard-box">
                        <div class="headline">
                            <h3>Contact Information</h3>
                        </div>
                        <div class="content with-padding">
                            <ul>
                                <li class="job-property margin-bottom-10"><i class="la la-map-marker"></i>
                                    142, Basant Viahr </li>
                                <li class="job-property margin-bottom-10"><i class="la la-phone"></i>
                                    <a href="tel:1-972-8103-393" rel="nofollow">1-972-8103-393</a></li>
                                <li class="job-property margin-bottom-10"><i class="la la-envelope"></i>
                                    <a href="mailto:contact@gmail.com" rel="nofollow">contact@gmail.com</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- contact-detail -->
            </div>
            <!-- row -->
        </div>
    </div>
<script>

    // TO MAKE THE MAP APPEAR YOU MUST
    // ADD YOUR ACCESS TOKEN FROM
    // https://account.mapbox.com
    mapboxgl.accessToken = 'pk.eyJ1IjoiY2FydG9kYmluYyIsImEiOiJja202bHN2OXMwcGYzMnFrbmNkMzVwMG5rIn0.Zb3J4JTdJS-oYNXlR3nvnQ';
    const map = new mapboxgl.Map({
        container: 'map',
        // Choose from Mapbox's core styles, or make your own style with Mapbox Studio
        style: 'mapbox://styles/mapbox/streets-v12',
        center: [2.3399, 48.8555],
        zoom: 12
    });

    const distanceContainer = document.getElementById('distance');

    // GeoJSON object to hold our measurement features
    const geojson = {
        'type': 'FeatureCollection',
        'features': []
    };

    // Used to draw a line between points
    const linestring = {
        'type': 'Feature',
        'geometry': {
            'type': 'LineString',
            'coordinates': []
        }
    };

    map.on('load', () => {
        map.addSource('geojson', {
            'type': 'geojson',
            'data': geojson
        });

        // Add styles to the map
        map.addLayer({
            id: 'measure-points',
            type: 'circle',
            source: 'geojson',
            paint: {
                'circle-radius': 5,
                'circle-color': '#000'
            },
            filter: ['in', '$type', 'Point']
        });
        map.addLayer({
            id: 'measure-lines',
            type: 'line',
            source: 'geojson',
            layout: {
                'line-cap': 'round',
                'line-join': 'round'
            },
            paint: {
                'line-color': '#000',
                'line-width': 2.5
            },
            filter: ['in', '$type', 'LineString']
        });

        map.on('click', (e) => {
            const features = map.queryRenderedFeatures(e.point, {
                layers: ['measure-points']
            });

            // Remove the linestring from the group
            // so we can redraw it based on the points collection.
            if (geojson.features.length > 1) geojson.features.pop();

            // Clear the distance container to populate it with a new value.
            distanceContainer.innerHTML = '';

            // If a feature was clicked, remove it from the map.
            if (features.length) {
                const id = features[0].properties.id;
                geojson.features = geojson.features.filter(
                    (point) => point.properties.id !== id
                );
            } else {
                const point = {
                    'type': 'Feature',
                    'geometry': {
                        'type': 'Point',
                        'coordinates': [e.lngLat.lng, e.lngLat.lat]
                    },
                    'properties': {
                        'id': String(new Date().getTime())
                    }
                };

                geojson.features.push(point);
            }

            if (geojson.features.length > 1) {
                linestring.geometry.coordinates = geojson.features.map(
                    (point) => point.geometry.coordinates
                );

                geojson.features.push(linestring);

                // Populate the distanceContainer with total distance
                const value = document.createElement('pre');
                const distance = turf.length(linestring);
                console.log(linestring);
                value.textContent = `Total distance: ${distance.toLocaleString()}km`;
                distanceContainer.appendChild(value);
            }

            map.getSource('geojson').setData(geojson);
        });
    });

    map.on('mousemove', (e) => {
        const features = map.queryRenderedFeatures(e.point, {
            layers: ['measure-points']
        });
        // Change the cursor to a pointer when hovering over a point on the map.
        // Otherwise cursor is a crosshair.
        map.getCanvas().style.cursor = features.length
            ? 'pointer'
            : 'crosshair';
    });

</script>
</asp:Content>
