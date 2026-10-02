using System;
using System.Collections.Generic;
using System.Linq;

public class BlogPost
{
    public string Slug { get; set; }
    public string Title { get; set; }
    public string MetaTitle { get; set; }
    public string Description { get; set; }
    public string Excerpt { get; set; }
    public string Keywords { get; set; }
    public string Category { get; set; }
    public string Icon { get; set; }
    public string Theme { get; set; }
    public DateTime Published { get; set; }
    public DateTime Updated { get; set; }
    public int ReadMinutes { get; set; }

    public string Url
    {
        get { return Slug + ".aspx"; }
    }
}

/// <summary>
/// Metadata for every blog article. Each post's body lives in &lt;Slug&gt;.aspx (using BlogPost.master);
/// add a new entry here whenever a new article page is created, and add it to sitemap.xml.
/// </summary>
public static class BlogRepository
{
    private static readonly List<BlogPost> Posts = new List<BlogPost>
    {
        new BlogPost
        {
            Slug = "Outstation-Taxi-from-Chittorgarh",
            Title = "Outstation Taxi from Chittorgarh: Popular Routes, Distances and Fares",
            MetaTitle = "Outstation Taxi from Chittorgarh | Routes, Distance and Fare Guide",
            Description = "Planning a road trip from Chittorgarh? See distances, travel time and indicative taxi fares to Udaipur, Jaipur, Ajmer, Kota, Indore, Ahmedabad and more.",
            Excerpt = "Distances, travel times and indicative fares for the most popular outstation taxi routes from Chittorgarh across Rajasthan, MP and Gujarat.",
            Keywords = "outstation taxi chittorgarh, chittorgarh to jaipur taxi, chittorgarh to ajmer taxi, chittorgarh to kota taxi, one way taxi chittorgarh",
            Category = "Outstation",
            Icon = "fas fa-road",
            Theme = "theme-slate",
            Published = new DateTime(2026, 9, 28),
            Updated = new DateTime(2026, 9, 28),
            ReadMinutes = 6
        },
        new BlogPost
        {
            Slug = "Udaipur-Airport-to-Chittorgarh-Taxi",
            Title = "Udaipur Airport to Chittorgarh Taxi: Fare, Travel Time and Booking Guide",
            MetaTitle = "Udaipur Airport to Chittorgarh Taxi | Fare, Time and Booking",
            Description = "Landing at Udaipur's Maharana Pratap Airport? Here is everything about booking a taxi from Udaipur Airport to Chittorgarh: distance, time, fare and tips.",
            Excerpt = "Everything you need to know about getting from Maharana Pratap Airport (Dabok) to Chittorgarh by taxi, from distance and time to fares and tips.",
            Keywords = "udaipur airport to chittorgarh taxi, dabok airport taxi, chittorgarh airport pickup, udaipur airport cab chittorgarh",
            Category = "Airport Transfer",
            Icon = "fas fa-plane-arrival",
            Theme = "theme-indigo",
            Published = new DateTime(2026, 9, 20),
            Updated = new DateTime(2026, 9, 20),
            ReadMinutes = 5
        },
        new BlogPost
        {
            Slug = "Sanwariya-Seth-Temple-Taxi-from-Chittorgarh",
            Title = "Sanwariya Seth Temple Darshan from Chittorgarh by Taxi: Complete Guide",
            MetaTitle = "Sanwariya Seth Temple Taxi from Chittorgarh | Darshan Guide",
            Description = "Plan a comfortable Sanwariya Seth (Sanwaliya Ji) temple darshan from Chittorgarh by taxi. Distance, best time to visit, nearby temples and fares.",
            Excerpt = "How to plan a hassle-free Sanwaliya Ji darshan from Chittorgarh: distance, best time, nearby temples to add, and what a taxi costs.",
            Keywords = "sanwariya seth temple taxi, sanwaliya ji taxi chittorgarh, chittorgarh to sanwariya ji distance, mandaphiya temple taxi",
            Category = "Pilgrimage",
            Icon = "fas fa-place-of-worship",
            Theme = "theme-rose",
            Published = new DateTime(2026, 9, 8),
            Updated = new DateTime(2026, 9, 8),
            ReadMinutes = 5
        },
        new BlogPost
        {
            Slug = "Chittorgarh-to-Udaipur-Taxi",
            Title = "Chittorgarh to Udaipur Taxi: Distance, Fare, Route and Travel Tips",
            MetaTitle = "Chittorgarh to Udaipur Taxi | Distance, Fare and Route Guide",
            Description = "Book a Chittorgarh to Udaipur taxi with confidence. Distance (about 115 km), travel time, indicative fares by car type, route and stops worth making.",
            Excerpt = "The 115 km drive from Chittorgarh to Udaipur is one of Rajasthan's most popular routes. Here is the distance, time, fares and the best stops on the way.",
            Keywords = "chittorgarh to udaipur taxi, chittorgarh to udaipur cab, chittorgarh udaipur distance, udaipur to chittorgarh taxi fare",
            Category = "Outstation",
            Icon = "fas fa-route",
            Theme = "theme-teal",
            Published = new DateTime(2026, 8, 22),
            Updated = new DateTime(2026, 8, 22),
            ReadMinutes = 6
        },
        new BlogPost
        {
            Slug = "Places-to-Visit-in-Chittorgarh",
            Title = "12 Best Places to Visit in Chittorgarh (With Distances and Taxi Tips)",
            MetaTitle = "12 Best Places to Visit in Chittorgarh | Sightseeing Guide",
            Description = "Discover the best places to visit in Chittorgarh: Vijay Stambh, Padmini Palace, Meera Temple, Bassi Sanctuary, Menal and more, with distances and taxi tips.",
            Excerpt = "From the towers of Chittorgarh Fort to waterfalls and wildlife nearby, these are the places you should not miss, plus how to cover them by taxi.",
            Keywords = "places to visit in chittorgarh, chittorgarh sightseeing, chittorgarh tourist places, chittorgarh local sightseeing taxi",
            Category = "Sightseeing",
            Icon = "fas fa-map-marked-alt",
            Theme = "theme-emerald",
            Published = new DateTime(2026, 8, 5),
            Updated = new DateTime(2026, 8, 5),
            ReadMinutes = 8
        },
        new BlogPost
        {
            Slug = "Chittorgarh-Fort-Travel-Guide",
            Title = "Chittorgarh Fort Travel Guide: History, Timings, Tickets and How to Reach",
            MetaTitle = "Chittorgarh Fort Travel Guide | History, Timings and Tickets",
            Description = "Complete Chittorgarh Fort travel guide: history, top attractions inside the fort, timings, ticket price, light and sound show and how to reach by taxi.",
            Excerpt = "India's largest fort and a UNESCO World Heritage Site. Learn its history, what to see inside, timings, tickets and the easiest way to explore it.",
            Keywords = "chittorgarh fort, chittorgarh fort timings, chittorgarh fort ticket price, chittorgarh fort history, how to reach chittorgarh fort",
            Category = "Travel Guide",
            Icon = "fab fa-fort-awesome",
            Theme = "theme-amber",
            Published = new DateTime(2026, 7, 18),
            Updated = new DateTime(2026, 7, 18),
            ReadMinutes = 7
        },
        new BlogPost
        {
            Slug = "Best-Taxi-Service-Chittorgarh",
            Title = "Best Taxi Services in Chittorgarh: Top 5 Trusted Cab Providers",
            MetaTitle = "Best Taxi Services in Chittorgarh | Top 5 Cab Providers",
            Description = "Looking for the best taxi service in Chittorgarh? Compare the top cab providers for comfort, reliability and affordable fares for local and outstation trips.",
            Excerpt = "Comfort, reliability and fair pricing: a look at the most trusted taxi services in Chittorgarh and what makes each one stand out.",
            Keywords = "best taxi service in chittorgarh, taxi in chittorgarh, chittorgarh cab service, taxi service chittorgarh",
            Category = "Taxi Guide",
            Icon = "fas fa-taxi",
            Theme = "theme-amber",
            Published = new DateTime(2025, 3, 15),
            Updated = new DateTime(2026, 10, 2),
            ReadMinutes = 5
        }
    };

    public static IEnumerable<BlogPost> All()
    {
        return Posts.OrderByDescending(p => p.Published);
    }

    public static BlogPost Find(string slug)
    {
        return Posts.FirstOrDefault(p => string.Equals(p.Slug, slug, StringComparison.OrdinalIgnoreCase));
    }

    public static IEnumerable<BlogPost> Latest(int count, string excludeSlug)
    {
        var query = All().Where(p => !string.Equals(p.Slug, excludeSlug, StringComparison.OrdinalIgnoreCase));
        return count > 0 ? query.Take(count) : query;
    }
}
