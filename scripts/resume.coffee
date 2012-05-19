skill.active = false for skill in sections.skills.elements

@SkillsCtrl = ($scope) ->
		$scope.skills = sections.skills.elements
		$scope.toggle_skill = (skill) ->
			skill.active = not skill.active
		return this
