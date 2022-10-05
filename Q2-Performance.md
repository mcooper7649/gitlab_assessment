### A user is complaining that it's taking a long time to load a page on our web application. In your own words, write down and discuss the possible cause(s) of the slowness. Also, describe how you would begin to troubleshoot this issue. Keep the following information about the environment in mind:

● The web application is written in a modern MVC web framework.
● Application data is stored in a relational database.
● All components (web application, web server, database) are running on a single Linux box with
8GB RAM, 2 CPU cores, and SSD storage with ample free space.
● You have root access to this Linux box.
We are interested in learning about your experience with modern web applications, and your ability
to reason about system design and architectural trade-offs. There are no right and wrong answers
to this question. Feel free to write as much or as little as you feel is necessary.

### Solution

---

**Performance issues can be some of the hardest problems to solve due to a variety of reasons, mainly just the that face many different facets of your application can cause performance related issues. Keep in mind performance varies between each scenario/customer, as a half second delay may not be an issue for one team while another this is a SLA impacting issue.**

> First, I would listen to our customer describe in detail the issue and try to pinpoint where on the OSI model the problem is occuring. Is it only on Mobile? First load only? What devices/browsers are impacted? Can we recreate from another machine? Same on VPN or another location? See image below for reference.
> Recreating the issue is normally one way to diagnose whether the issue is localized to the user (LOCAL network, Computer, ISP, ETC). If we cannot recreate, explain your process to the user and begin local troubleshooting steps. (Clear Cache, Confirm URLS, Try Alternate Browsers/Devices). If we can recreate, this mean the issue isn't local and we can begin to drill down more potential causes.

![OSI-Model](https://s7280.pcdn.co/wp-content/uploads/2018/06/osi-model-7-layers-1.png)

> Once we can recreate the issue, we can use 3rd party tools to help us find possible clues and what is our issue. Using the performance tools

> If we want to test CPU of our server to confirm it isn't overloaded we can use Audits by Chrome.
> This allows us to simulate device Desktop/Mobile, Audits, Throttle the CPU, and clear storage after each audit.
> The real power is the report, pictured below. It will analyze metrics such as Optimized Images, Minified JS and much more important data to improve resources load speed.
> [source](https://developer.chrome.com/docs/devtools/speed/get-started/) > ![Audits](https://wd.imgix.net/image/admin/NgjLST0tdYLxJIyaLMAo.png?auto=format&w=845)

> If indicators point to the relational database being the culprit, we can try to optimize our queries using a query optimizer tool, exhaustive search optimization, heuristic based optimization or consider the structure of the tabels we are requesting and possible redesign to keep them smaller in size.

> Exhaustive Search Optimization
> In these techniques, for a query, all possible query plans are initially generated and then the best plan is selected. Though these techniques provide the best solution, it has an exponential time and space complexity owing to the large solution space. For example, dynamic programming technique.

> Heuristic Based Optimization
> Heuristic based optimization uses rule-based optimization approaches for query optimization. These algorithms have polynomial time and space complexity, which is lower than the exponential complexity of exhaustive search-based algorithms. However, these algorithms do not necessarily produce the best query plan.

[source](https://www.tutorialspoint.com/distributed_dbms/distributed_dbms_query_optimization_centralized_systems.htm)
