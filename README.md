#API research: useful links
* [rails API gem](https://github.com/rails-api/rails-api)
* [rails cast on API](http://railscasts.com/episodes/348-the-rails-api-gem)
* [rails metal::module that could make API fast](http://weblog.rubyonrails.org/2008/12/17/introducing-rails-metal/)
* [blog post about rails API](http://railsware.com/blog/2013/04/08/api-with-ruby-on-rails-useful-tricks/)




VALID QUERIES:  (note that the my_xxx prefix is not a name, it simply denotes an instance)

Org.all => All orgs with fields below
  
  Single field returns(when called on instance of Org, e.g my_org):
    my_org.name
    my_org.initials
    my_org.address
    my_org.city
    my_org.int_branch
    my_org.telephone
    my_org.fax
    my_org.email
    my_org.founding_date
    my_org.starting_date
    my_org.legal_type
    my_org.legal_number
    my_org.cuit
    my_org.vat_exempt
    my_org.income_exempt
    my_org.tax_ded
    my_org.mission
    my_org.objective
    my_org.code_conduct
    my_org.external_auditor
    my_org.annual_reporting
    my_org.external_prog_eval
    my_org.trans_policy
    my_org.num_prog_ind
    my_org.num_prog_org
    my_org.num_prog_pub
    my_org.certifier_name1
    my_org.certifier_name2
    my_org.certifier_title1
    my_org.certifier_title2
    my_org.created_at
    my_org.updated_at
    my_org.transparency

  has_many associations(must select an instance to access nested attributes):
    
    my_org.activities => all activities for this org
      my_org.my_activity.description

    my_org.ages => all age groups served by this org
      my_org.my_age.description


  has_many_through association 
      my_org.locations => list of all locations (prov id,  primary boolean) 
      my_org.my_prov.name => e.g "catamarca"
      my_org.provinces => list of all provinces where org is present (if you want names rather than ids)


  has_one associations (no need for selecting instance as it only has one):
  

      my_org.advisory => Advisory committee for this org
        my_org.advisory.id

      my_org.team => Team for this org
        my_org.team.authority
        my_org.team.authority
        my_org.team.fte
        my_org.team.pte
        my_org.team.volunteers


Activity.all => all activity categories
  my_activity.orgs => all orgs that contain this activity
  my_activity.description

Advisory.all => all advisory committies
  Advisory.org => which org this advisory committee belongs to

Age.all => all possible age categories
  my_age.orgs => all orgs that serve this age group
  my_age.description

Board.all => all boards
  my_board.org => org this board belongs to
  my_board.

Location.all => all location



Team.all => all teams
  my_team.org
  my_team.authority
  my_team.fte
  my_team.pte
  my_team.volunteers
