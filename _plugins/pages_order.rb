# https://gist.github.com/yalp/5643384
# Force Jekyll to generate pages in a given order using a predefined list of pages.
#
# Just declare a "pages_order" list in _config.yml with the list of pages :
#
# pages_order: ['index', 'summary', 'overview', 'part1', 'part2', 'conclusion', 'notes']
#
# The plugin then exposes in the basename of the previous and next pages
# with {{page.next}} and {{page.prev}} to be used in layouts :
#
# {% if page.prev %}
# <a id="previous-page" href="{{page.prev}}.html">Previous</a>
# {% endif %}
#
# {% if page.next %}
# <a id="next-page" href="{{page.next}}.html">Next</a>
# {% endif %}
#
#
module Jekyll
  class PagesOrder < Generator
 
    # Apply sort according to config.pages_order
    # and inject navigation links
    def generate(site)
      order = site.config['pages_order']
      if not order.nil?
        sort(site.pages, order)
        inject_nav(site.pages)
      end
    end
 
    # Order generation according to order
    def sort(pages, order)
      pages.sort! { |a,b|
        as = order.index(a.basename)
        bs = order.index(b.basename)
        if as.nil?
          bs.nil? ? (a.basename <=> b.basename) : 1
        elsif bs.nil?
          as.nil? ? (a.basename <=> b.basename) : -1
        else
          as <=> bs
        end
      }
    end
 
    # Inject next / prev navigation in page.data
    def inject_nav(pages)
      len = pages.length
      if len > 1
        pages[0].data['next'] = pages[1].basename
        pages[len-1].data['prev'] = pages[len-2].basename
        pages.each_cons(3) { |pages|
          pages[1].data['prev'] = pages[0].basename
          pages[1].data['next'] = pages[2].basename
        }
      end
    end
  end
end