outputpath = '__FULLPATH__/output.txt'
with open(outputpath, mode='w') as f:
    #get active layer
    layer = iface.activeLayer()
    #get all feature
    features = layer.getFeatures()
    for feature in features:
        #get geometry
        f.write(feature.geometry().asWkt())
        #get one of property(Attribute)
        #print(feature['name_ja'])
        