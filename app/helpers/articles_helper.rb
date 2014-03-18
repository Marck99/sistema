module ArticlesHelper

	def num_comments(object)
		object.comments.length
	end

	def show_link(value, form)
		if value == 'edit'
        	form.submit 'Actualizar'
      	else
        	form.submit 'Publicar'
        end
	end
end
