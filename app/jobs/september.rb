Dashing.scheduler.every '1s' do
	project_value = get_project_status
  Dashing.send_event('project1', { value: project_value })
	Dashing.send_event('project2', { value: rand(100) })
end

def get_project_status
	project = Project.last

	project_status = 0

	milestones = [project.product, project.design, project.frontdev, project.backdev, project.presentation]

	milestones.each do |milestone|
		project_status += 20 if milestone == true
	end

	return project_status
end
