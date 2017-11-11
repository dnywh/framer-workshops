# Share icon and sheet in article
# Import file "shareSheet"
sketch = Framer.Importer.load("imported/shareSheet@2x", scale: 1)

# # Add hidden state to shareSheet
# sketch.shareSheet.states =
# 	hidden: y: 667
# 	animationOptions:
# 		time: 0.5
# 		curve: Bezier.ease
# 
# # Switch instantly to hidden
# sketch.shareSheet.stateSwitch("hidden")
# 
# # Show shareSheet when tapping on targetShare
# targetShare.onTap ->
# 	sketch.shareSheet.animate("default")
# # Hide shareSHeet when tap on Cancel/shareSheet
# sketch.shareSheet.onTap ->
# 	sketch.shareSheet.animate("hidden")


# Show shareSheet when tapping on targetShare
targetShare.onTap ->
	flow.showOverlayBottom(sketch.shareSheetArtboard)
# Hide shareSHeet when tap on Cancel/shareSheet
sketch.shareSheetArtboard.onTap ->
	flow.showPrevious()

# Bookmark in article

#Set animation options
bookmarked.animationOptions =
	time: 0.5
	curve: Spring(damping: 0.5)

# Define unsaved/not bookmarked state
bookmarked.states.notBookmarked =
	opacity: 0.00
	scale: 0.5

# Define saved/bookmarked state	
bookmarked.states.isBookmarked =
	opacity: 1
	scale: 1
# Hide bookmark upon prototype start 
bookmarked.stateSwitch("notBookmarked")

targetBookmark.onTap ->
# Cycle back and forth
	bookmarked.stateCycle("notBookmarked", "isBookmarked")

# Arts feed navigation
flow = new FlowComponent
# First flow is feed
flow.showNext(feed)

# Open article1 when I tap on its preview
article1.onTap ->
	flow.showNext(article)

# Go back to feed when I tap on back buttons
backToFeed.onTap ->
	flow.showPrevious(feed)
