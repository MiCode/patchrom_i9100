.class public Landroid/media/MediaRouter$RouteGroup;
.super Landroid/media/MediaRouter$RouteInfo;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteGroup"
.end annotation


# instance fields
.field final mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateName:Z


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$RouteCategory;)V
    .locals 1
    .parameter "category"

    .prologue
    .line 1142
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 1138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    .line 1143
    iput-object p0, p0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    .line 1144
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 1145
    return-void
.end method


# virtual methods
.method public addRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .parameter "route"

    .prologue
    .line 1158
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getGroup()Landroid/media/MediaRouter$RouteGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1159
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Route "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already part of a group."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1161
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter$RouteInfo;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    if-eq v1, v2, :cond_1

    .line 1162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Route cannot be added to a group with a different category. (Route category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " group category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaRouter$RouteInfo;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1167
    :cond_1
    iget-object v1, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1168
    .local v0, at:I
    iget-object v1, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    iput-object p0, p1, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    .line 1170
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    .line 1171
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateVolume()V

    .line 1172
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->routeUpdated()V

    .line 1173
    invoke-static {p1, p0, v0}, Landroid/media/MediaRouter;->dispatchRouteGrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V

    .line 1174
    return-void
.end method

.method public addRoute(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 3
    .parameter "route"
    .parameter "insertAt"

    .prologue
    .line 1183
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getGroup()Landroid/media/MediaRouter$RouteGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1184
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already part of a group."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1186
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter$RouteInfo;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    if-eq v0, v1, :cond_1

    .line 1187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route cannot be added to a group with a different category. (Route category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " group category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter$RouteInfo;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1192
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1193
    iput-object p0, p1, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    .line 1194
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    .line 1195
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateVolume()V

    .line 1196
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->routeUpdated()V

    .line 1197
    invoke-static {p1, p0, p2}, Landroid/media/MediaRouter;->dispatchRouteGrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V

    .line 1198
    return-void
.end method

.method getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "res"

    .prologue
    .line 1148
    iget-boolean v0, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateName()V

    .line 1149
    :cond_0
    invoke-super {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 1246
    iget-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public getRouteCount()I
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method memberNameChanged(Landroid/media/MediaRouter$RouteInfo;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "info"
    .parameter "name"

    .prologue
    .line 1313
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    .line 1314
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->routeUpdated()V

    .line 1315
    return-void
.end method

.method memberStatusChanged(Landroid/media/MediaRouter$RouteInfo;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "info"
    .parameter "status"

    .prologue
    .line 1318
    invoke-virtual {p0, p2}, Landroid/media/MediaRouter$RouteGroup;->setStatusInt(Ljava/lang/CharSequence;)V

    .line 1319
    return-void
.end method

.method memberVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 1322
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateVolume()V

    .line 1323
    return-void
.end method

.method public removeRoute(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1224
    iget-object v1, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    .line 1225
    .local v0, route:Landroid/media/MediaRouter$RouteInfo;
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    .line 1226
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    .line 1227
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateVolume()V

    .line 1228
    invoke-static {v0, p0}, Landroid/media/MediaRouter;->dispatchRouteUngrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V

    .line 1229
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->routeUpdated()V

    .line 1230
    return-void
.end method

.method public removeRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .parameter "route"

    .prologue
    .line 1206
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getGroup()Landroid/media/MediaRouter$RouteGroup;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 1207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a member of this group."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1210
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1211
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    .line 1212
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    .line 1213
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateVolume()V

    .line 1214
    invoke-static {p1, p0}, Landroid/media/MediaRouter;->dispatchRouteUngrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V

    .line 1215
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->routeUpdated()V

    .line 1216
    return-void
.end method

.method public requestSetVolume(I)V
    .locals 8
    .parameter "volume"

    .prologue
    .line 1271
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->getVolumeMax()I

    move-result v1

    .line 1272
    .local v1, maxVol:I
    if-nez v1, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    int-to-float v6, p1

    int-to-float v7, v1

    div-float v5, v6, v7

    .line 1277
    .local v5, scaledVolume:F
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->getRouteCount()I

    move-result v3

    .line 1278
    .local v3, routeCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 1279
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteGroup;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 1280
    .local v2, route:Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v4, v6

    .line 1281
    .local v4, routeVol:I
    invoke-virtual {v2, v4}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 1278
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1283
    .end local v2           #route:Landroid/media/MediaRouter$RouteInfo;
    .end local v4           #routeVol:I
    :cond_2
    iget v6, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    if-eq p1, v6, :cond_0

    .line 1284
    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    .line 1285
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method public requestUpdateVolume(I)V
    .locals 7
    .parameter "direction"

    .prologue
    .line 1291
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->getVolumeMax()I

    move-result v1

    .line 1292
    .local v1, maxVol:I
    if-nez v1, :cond_1

    .line 1310
    :cond_0
    :goto_0
    return-void

    .line 1296
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->getRouteCount()I

    move-result v3

    .line 1297
    .local v3, routeCount:I
    const/4 v5, 0x0

    .line 1298
    .local v5, volume:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 1299
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteGroup;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 1300
    .local v2, route:Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2, p1}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 1301
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v4

    .line 1302
    .local v4, routeVol:I
    if-le v4, v5, :cond_2

    .line 1303
    move v5, v4

    .line 1298
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1306
    .end local v2           #route:Landroid/media/MediaRouter$RouteInfo;
    .end local v4           #routeVol:I
    :cond_3
    iget v6, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    if-eq v5, v6, :cond_0

    .line 1307
    iput v5, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    .line 1308
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method routeUpdated()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1343
    const/4 v7, 0x0

    .line 1344
    .local v7, types:I
    iget-object v8, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1345
    .local v0, count:I
    if-nez v0, :cond_0

    .line 1347
    invoke-static {p0}, Landroid/media/MediaRouter;->removeRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1370
    :goto_0
    return-void

    .line 1351
    :cond_0
    const/4 v4, 0x0

    .line 1352
    .local v4, maxVolume:I
    const/4 v3, 0x1

    .line 1353
    .local v3, isLocal:Z
    const/4 v2, 0x1

    .line 1354
    .local v2, isFixedVolume:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1355
    iget-object v8, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRouter$RouteInfo;

    .line 1356
    .local v5, route:Landroid/media/MediaRouter$RouteInfo;
    iget v8, v5, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    or-int/2addr v7, v8

    .line 1357
    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v6

    .line 1358
    .local v6, routeMaxVolume:I
    if-le v6, v4, :cond_1

    .line 1359
    move v4, v6

    .line 1361
    :cond_1
    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v8

    if-nez v8, :cond_2

    move v8, v9

    :goto_2
    and-int/2addr v3, v8

    .line 1362
    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v8

    if-nez v8, :cond_3

    move v8, v9

    :goto_3
    and-int/2addr v2, v8

    .line 1354
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v8, v10

    .line 1361
    goto :goto_2

    :cond_3
    move v8, v10

    .line 1362
    goto :goto_3

    .line 1364
    .end local v5           #route:Landroid/media/MediaRouter$RouteInfo;
    .end local v6           #routeMaxVolume:I
    :cond_4
    if-eqz v3, :cond_5

    move v8, v10

    :goto_4
    iput v8, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 1365
    if-eqz v2, :cond_6

    move v8, v10

    :goto_5
    iput v8, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 1366
    iput v7, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 1367
    iput v4, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 1368
    if-ne v0, v9, :cond_7

    iget-object v8, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v8}, Landroid/media/MediaRouter$RouteInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :goto_6
    iput-object v8, p0, Landroid/media/MediaRouter$RouteInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1369
    invoke-super {p0}, Landroid/media/MediaRouter$RouteInfo;->routeUpdated()V

    goto :goto_0

    :cond_5
    move v8, v9

    .line 1364
    goto :goto_4

    :cond_6
    move v8, v9

    .line 1365
    goto :goto_5

    .line 1368
    :cond_7
    const/4 v8, 0x0

    goto :goto_6
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 1256
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1257
    return-void
.end method

.method public setIconResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 1266
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteGroup;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1267
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/media/MediaRouter$RouteInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1388
    .local v2, sb:Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1389
    iget-object v3, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1390
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1391
    if-lez v1, :cond_0

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    :cond_0
    iget-object v3, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1390
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1394
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1395
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method updateName()V
    .locals 5

    .prologue
    .line 1373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1374
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1375
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1376
    iget-object v4, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 1378
    .local v2, info:Landroid/media/MediaRouter$RouteInfo;
    if-lez v1, :cond_0

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    :cond_0
    iget-object v4, v2, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1375
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1381
    .end local v2           #info:Landroid/media/MediaRouter$RouteInfo;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 1382
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    .line 1383
    return-void
.end method

.method updateVolume()V
    .locals 5

    .prologue
    .line 1327
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->getRouteCount()I

    move-result v1

    .line 1328
    .local v1, routeCount:I
    const/4 v3, 0x0

    .line 1329
    .local v3, volume:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1330
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteGroup;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v2

    .line 1331
    .local v2, routeVol:I
    if-le v2, v3, :cond_0

    .line 1332
    move v3, v2

    .line 1329
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1335
    .end local v2           #routeVol:I
    :cond_1
    iget v4, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    if-eq v3, v4, :cond_2

    .line 1336
    iput v3, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    .line 1337
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1339
    :cond_2
    return-void
.end method
