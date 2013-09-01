module MembersHelper
	def get_user_role(project, user)
		Member.where(project_id: project.id, user_id: user.id).first.role
	end
end
