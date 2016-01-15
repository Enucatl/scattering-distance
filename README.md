scattering-distance
------------
analysis of the dark field as a function of the distance from the phase
grating

run locally
------------
`middleman server`

git hook to push the compiled version to gh-pages
-------------------------------------------------
```
ln -s ../../pre-push .git/hooks/pre-push 
```

setup subtree remotes
-------------------------------------------------
```
git remote add enucatl-d3.base-chart git@github.com:Enucatl/d3.base-chart.git
git remote add enucatl-d3.axes git@github.com:Enucatl/d3.axes.git
git remote add enucatl-d3.barchart git@github.com:Enucatl/d3.barchart.git
git remote add enucatl-d3.colorbar git@github.com:Enucatl/d3.colorbar.git
git remote add enucatl-d3.errorbar git@github.com:Enucatl/d3.errorbar.git
git remote add enucatl-d3.image git@github.com:Enucatl/d3.image.git
git remote add enucatl-d3.line git@github.com:Enucatl/d3.line.git
git remote add enucatl-d3.scatter git@github.com:Enucatl/d3.scatter.git
```

setup subtrees
--------------
```
git subtree add --squash --prefix source/javascripts/vendor/d3.errorbar https://github.com/Enucatl/d3.errorbar.git master
git subtree add --squash --prefix source/javascripts/vendor/d3.axes https://github.com/Enucatl/d3.axes.git master
git subtree add --squash --prefix source/javascripts/vendor/d3.barchart https://github.com/Enucatl/d3.barchart.git master
git subtree add --squash --prefix source/javascripts/vendor/d3.colorbar https://github.com/Enucatl/d3.colorbar.git master
git subtree add --squash --prefix source/javascripts/vendor/d3.errorbar https://github.com/Enucatl/d3.errorbar.git master
git subtree add --squash --prefix source/javascripts/vendor/d3.image https://github.com/Enucatl/d3.image.git master
git subtree add --squash --prefix source/javascripts/vendor/d3.line https://github.com/Enucatl/d3.line.git master
git subtree add --squash --prefix source/javascripts/vendor/d3.scatter https://github.com/Enucatl/d3.scatter.git master
```
