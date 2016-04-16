class DemosController < ApplicationController
  layout false

  def show

    @posts = [
      {
        title: '2015 Year in Review',
        text: 'Code School, Pluralsight, Travel, Blogging, Cocktails',
        category: 'personal'
      },
      {
        title: 'Making ng-guess.com',
        text: 'Creating and launching a side project in a week',
        category: 'technical'
      },
      {
        title: 'Creating Photo Albums with Lightroom',
        text: 'Lightroom and Middleman sitting in a tree',
        category: 'technical'
      },
      {
        title: 'How I Ended Up – and Stayed – at Code School',
        text: 'A transcript of a story told to the Code School team.',
        category: 'personal'
      },
      {
        title: 'Investment Literacy',
        text: 'Managing your investments is easier than you think.',
        category: 'personal'
      },
      {
         title: 'How Code School Verifies Student Submissions',
        text: 'Published on the Code School Blog',
        category: 'technical'
      },
      {
        title: 'Mastery is a Trap',
        text: 'You don\'t need to be a master to accomplish your goals',
        category: 'personal'
      },
      {
        title: '(Re)Introducing Our iOS Path',
        text: 'Published on the Code School Blog',
        category: 'technical',
        link: true
      },
      {
        title: 'How I Create Photo Albums',
        text: 'A lot of work goes into each -- here\'s how.',
        category: 'technical'
      },
      {
        title: 'How a Bug in My Ruby Code Cost Code School $13,000',
        text: 'Published on the Code School Blog',
        category: 'technical',
        link: true
      },
      {
        title: 'Blasting Off With Bootstrap',
        text: 'My latest course at Code School',
        category: 'technical'
      }
    ]

    @photos = [
      {
        src: 'http://adamfortuna.com/images/galleries/salt_lake_city/views_from_plane/montreal--views_from_plane-s033.jpg',
        title: 'Salt Lake City',
        text: 'Pluralsight Author Summit and ng-conf',
        photos_count: 28,
        videos_count: 5
      }
    ]

    render params[:id]
  end
end
