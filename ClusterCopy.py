def copyClusterWeight (clusterName):
   selection = cmds.ls(sl = True)
   if len (selection) == 2: 
      Scource = selection[0] 
      Target = selection[1]
      ScourceDup = cmds.duplicate (Scource,n=Scource+'_Duplicate')[0]
      baseJnt = cmds.joint (p= (0,0,0),n=ScourceDup+'_Base_Jnt')
      sknJnt = cmds.joint (p= (0,0,0),n=ScourceDup+'_Skn_Jnt')
      skn = cmds.skinCluster (baseJnt, sknJnt, ScourceDup, tsb = True)[0]
      svrtCount = cmds.polyEvaluate(ScourceDup,v=True)
      cmds.skinPercent (skn, (ScourceDup+'.vtx[0:'+str(svrtCount)+']'), tv = [(baseJnt,1)])
      deformSets = cmds.listConnections (clusterName+'.message', destination = True, type = 'objectSet')[0] 
      cmds.select (deformSets)
      vrtSel = cmds.ls (sl = True, fl = True)
      cmds.select (Scource+'.vtx[0:'+str(svrtCount)+']')
      mshvrtSel = cmds.ls (sl = True, fl = True)
      for i in vrtSel:
         if i in mshvrtSel:
             sknWh = cmds.percent (clusterName, i, q = True, v = True)[0]
             sknMsh = i.replace (Scource, ScourceDup)
             cmds.skinPercent (skn, sknMsh, tv = ((sknJnt,sknWh)])
      cmds.select(cl = True)

      targetDup = cmds.duplicate (Target,n=Target+'_Duplicate')[0] 
      infJnt = cmds.skinCluster (ScourceDup, q = True, inf = True)
      dupSkn = cmds.skinCluster (infJnt, targetDup, dr = 4.0, bm = 0, nw = 1, omi = 0, tsb = True, wd = 0)[0] 
      cmds.copySkinWeights (ScourceDup, targetDup, nm = True, sa = 'closestPoint', is = 'oneToOne')
      cmds.select(cl = True)
      cmds.skinCluster (dupSkn, selectInfluenceVerts = sknJnt, e = True) 
      dupVerts = cmds.ls (sl = True, fl = True)
      if len (dupVerts) = 1:
         if cmds.objectType (dupVerts[0]) == 'mesh': 
             cmds.delete (ScourceDup, targetDup)
             print dupVerts[0]+' has no Influence to copy.'
      else:
         cmds.sets (Target,add = deformSets)
         for i in dupVerts:
             sknWh = cmds.skinPercent (dupSkn, i, q = True, v = True)[1]
             skinMsh = i.replace (targetDup, Target) 
             cmds.percent (clusterName, skinMsh, v = sknWh) 
         cmds.select(cl = True)
         cmds.skinCluster (dupSkn, selectInfluenceVerts = baseJnt, e = True)
         baseVerts = cmds.ls (sl = True, fl = True) 
         if len (baseVerts) > 2:
             for m in baseVerts:
                Wh = cmds.skinPercent (dupSkn, m, q= True, v=True)[0]
                if Wh >.99:
                    sknMsh = m.replace(targetDup,Target)
                    cmds.percent(clusterName,sknMsh,v=0)
        cmds.select(cl=1)
        cmds.delete(ScourceDup,targetDup)
    cmds.select(selection, r=1)
