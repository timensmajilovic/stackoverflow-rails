module PostsHelper
    def show_post_buttons(post)
      html = '<td>'
      html += link_to 'Show', post
      html += '</td>'
      if post.user == current_user
        html += '<td>'
        html += link_to 'Edit', edit_post_path(post)
        html += '</td>'
        html += '<td>'
        html += link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' }
        html += '</td>'
      end
  
      html.html_safe
    end
  
    def show_edit_button(post)
      link_to 'Edit', edit_post_path(post) if post.user == current_user
    end
  end
