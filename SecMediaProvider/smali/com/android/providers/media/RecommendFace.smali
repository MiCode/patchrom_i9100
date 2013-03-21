.class public Lcom/android/providers/media/RecommendFace;
.super Ljava/lang/Object;
.source "RecommendFace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/RecommendFace$SimilarPerson;,
        Lcom/android/providers/media/RecommendFace$FaceItem;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFR:I

.field private mFaceCopector:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/providers/media/RecommendFace$SimilarPerson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "fr"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/media/RecommendFace;->mFR:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    .line 253
    new-instance v0, Lcom/android/providers/media/RecommendFace$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/RecommendFace$1;-><init>(Lcom/android/providers/media/RecommendFace;)V

    iput-object v0, p0, Lcom/android/providers/media/RecommendFace;->mFaceCopector:Ljava/util/Comparator;

    .line 21
    iput p2, p0, Lcom/android/providers/media/RecommendFace;->mFR:I

    .line 22
    iput-object p1, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method private getGroups()[I
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 85
    const/4 v8, 0x0

    .line 86
    .local v8, groups:[I
    iget-object v3, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 87
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v11, "select distinct group_id from faces where group_id>0 and recommended_id=1"

    .line 88
    .local v11, sql:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 89
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 91
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 93
    .local v6, count:I
    const/4 v9, 0x0

    .line 94
    .local v9, i:I
    new-array v8, v6, [I

    move v10, v9

    .line 96
    .end local v9           #i:I
    .local v10, i:I
    :goto_0
    add-int/lit8 v9, v10, 0x1

    .end local v10           #i:I
    .restart local v9       #i:I
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v8, v10

    .line 97
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 100
    .end local v6           #count:I
    .end local v9           #i:I
    :cond_0
    if-eqz v7, :cond_1

    .line 101
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 103
    :cond_1
    return-object v8

    .line 100
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_2

    .line 101
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    .restart local v6       #count:I
    .restart local v9       #i:I
    :cond_3
    move v10, v9

    .end local v9           #i:I
    .restart local v10       #i:I
    goto :goto_0
.end method

.method private getRegisteredPersons()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/media/RecommendFace$SimilarPerson;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 179
    const/4 v7, 0x0

    .line 180
    .local v7, person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    iget-object v3, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 181
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 182
    .local v9, registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    const-string v11, "select _id from persons where _id>1"

    .line 183
    .local v11, sql:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_PERSON_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 184
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 186
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9           #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    .local v10, registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    move-object v8, v7

    .line 189
    .end local v7           #person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    .local v8, person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    :goto_0
    :try_start_1
    new-instance v7, Lcom/android/providers/media/RecommendFace$SimilarPerson;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Lcom/android/providers/media/RecommendFace$SimilarPerson;-><init>(Lcom/android/providers/media/RecommendFace$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    .end local v8           #person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    .restart local v7       #person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v7, Lcom/android/providers/media/RecommendFace$SimilarPerson;->mPersonId:I

    .line 191
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    if-nez v2, :cond_3

    move-object v9, v10

    .line 195
    .end local v10           #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    .restart local v9       #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    :cond_0
    if-eqz v6, :cond_1

    .line 196
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_1
    return-object v9

    .line 195
    :catchall_0
    move-exception v2

    :goto_1
    if-eqz v6, :cond_2

    .line 196
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    .line 195
    .end local v7           #person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    .end local v9           #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    .restart local v8       #person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    .restart local v10       #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    :catchall_1
    move-exception v2

    move-object v9, v10

    .end local v10           #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    .restart local v9       #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    move-object v7, v8

    .end local v8           #person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    .restart local v7       #person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    goto :goto_1

    .end local v9           #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    .restart local v10       #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    :catchall_2
    move-exception v2

    move-object v9, v10

    .end local v10           #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    .restart local v9       #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    goto :goto_1

    .end local v9           #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    .restart local v10       #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    :cond_3
    move-object v8, v7

    .end local v7           #person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    .restart local v8       #person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    goto :goto_0
.end method

.method private getUngroupFaces()[Lcom/android/providers/media/RecommendFace$FaceItem;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 107
    const/4 v8, 0x0

    .line 108
    .local v8, faces:[Lcom/android/providers/media/RecommendFace$FaceItem;
    iget-object v3, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 109
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "select _id,face_data from faces where auto_group>0 and group_id=0 and recommended_id=%2$d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 111
    .local v10, sql:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 112
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 114
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 116
    .local v6, count:I
    const/4 v9, 0x0

    .line 117
    .local v9, i:I
    new-array v8, v6, [Lcom/android/providers/media/RecommendFace$FaceItem;

    .line 119
    :cond_0
    new-instance v2, Lcom/android/providers/media/RecommendFace$FaceItem;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/providers/media/RecommendFace$FaceItem;-><init>(Lcom/android/providers/media/RecommendFace;Lcom/android/providers/media/RecommendFace$1;)V

    aput-object v2, v8, v9

    .line 120
    aget-object v2, v8, v9

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceId:I

    .line 121
    aget-object v2, v8, v9

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceData:I

    .line 122
    add-int/lit8 v9, v9, 0x1

    .line 123
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 126
    .end local v6           #count:I
    .end local v9           #i:I
    :cond_1
    if-eqz v7, :cond_2

    .line 127
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_2
    return-object v8

    .line 126
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_3

    .line 127
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private loadGroup(I)I
    .locals 13
    .parameter "groupId"

    .prologue
    const/4 v5, 0x1

    const/4 v12, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    .local v8, faceDataIndex:[I
    const/4 v6, 0x0

    .line 32
    .local v6, count:I
    const/4 v9, 0x0

    .line 33
    .local v9, group:I
    sget-object v2, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 34
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 35
    .local v0, cr:Landroid/content/ContentResolver;
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "face_data"

    aput-object v3, v2, v12

    const-string v3, "group_id=?"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 37
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 39
    new-array v8, v6, [I

    .line 40
    const/4 v10, 0x0

    .local v10, i:I
    move v11, v10

    .line 42
    .end local v10           #i:I
    .local v11, i:I
    :goto_0
    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v8, v11

    .line 43
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    .line 47
    .end local v10           #i:I
    :cond_0
    if-eqz v7, :cond_1

    .line 48
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_1
    if-lez v6, :cond_2

    .line 51
    iget v2, p0, Lcom/android/providers/media/RecommendFace;->mFR:I

    invoke-static {v2, v8, v6, v12}, Lcom/android/providers/media/NativeApi;->loadGroup(I[IIZ)I

    move-result v9

    .line 52
    :cond_2
    return v9

    .line 47
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_3

    .line 48
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .restart local v10       #i:I
    :cond_4
    move v11, v10

    .end local v10           #i:I
    .restart local v11       #i:I
    goto :goto_0
.end method

.method private loadGroupKey(I)I
    .locals 12
    .parameter "personId"

    .prologue
    .line 56
    const/4 v9, 0x0

    .line 57
    .local v9, faceDataIndex:[I
    const/4 v6, 0x0

    .line 58
    .local v6, count:I
    const/4 v10, 0x0

    .line 59
    .local v10, group:I
    iget-object v2, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 60
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "select face_data from faces where person_id=%1$d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 61
    .local v11, sql:Ljava/lang/String;
    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_PERSON_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 62
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 64
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    const/16 v2, 0x1e

    new-array v9, v2, [I

    move v7, v6

    .line 67
    .end local v6           #count:I
    .local v7, count:I
    :goto_0
    add-int/lit8 v6, v7, 0x1

    .end local v7           #count:I
    .restart local v6       #count:I
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v9, v7

    .line 68
    const/16 v2, 0x1e

    if-ge v6, v2, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    .line 72
    :cond_0
    if-eqz v8, :cond_1

    .line 73
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_1
    if-lez v6, :cond_2

    .line 76
    iget v2, p0, Lcom/android/providers/media/RecommendFace;->mFR:I

    const/4 v3, 0x1

    invoke-static {v2, v9, v6, v3}, Lcom/android/providers/media/NativeApi;->loadGroup(I[IIZ)I

    move-result v10

    .line 77
    :cond_2
    return v10

    .line 72
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_3

    .line 73
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    :cond_4
    move v7, v6

    .end local v6           #count:I
    .restart local v7       #count:I
    goto :goto_0
.end method

.method private unloadGroupKey(I)V
    .locals 1
    .parameter "group"

    .prologue
    .line 81
    if-lez p1, :cond_0

    .line 82
    iget v0, p0, Lcom/android/providers/media/RecommendFace;->mFR:I

    invoke-static {v0, p1}, Lcom/android/providers/media/NativeApi;->unLoadGroup(II)V

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public getRecomendedId(I)[I
    .locals 18
    .parameter "faceId"

    .prologue
    .line 206
    const/4 v14, 0x3

    .line 207
    .local v14, recomendedCount:I
    const/4 v12, 0x0

    .line 208
    .local v12, personCount:I
    const/4 v13, 0x0

    .line 209
    .local v13, personIds:[I
    const/4 v3, 0x1

    new-array v8, v3, [I

    .line 210
    .local v8, faceData:[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 211
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v3, "select face_data from faces where _id=%1$d and auto_group>0"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 212
    .local v17, sql:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 213
    .local v2, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 215
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v8, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_0
    if-eqz v7, :cond_1

    .line 220
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_1
    const/4 v3, 0x0

    aget v3, v8, v3

    if-gez v3, :cond_3

    .line 223
    const/4 v3, 0x0

    .line 250
    :goto_0
    return-object v3

    .line 219
    :catchall_0
    move-exception v3

    if-eqz v7, :cond_2

    .line 220
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3

    .line 224
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v8, v4, v5}, Lcom/android/providers/media/NativeApi;->loadGroup(I[IIZ)I

    move-result v9

    .line 225
    .local v9, group:I
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/RecommendFace;->getRegisteredPersons()Ljava/util/ArrayList;

    move-result-object v16

    .line 226
    .local v16, similarPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 227
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 231
    const/4 v15, 0x0

    .line 232
    .local v15, similarPerson:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    const/4 v10, 0x0

    .line 233
    .local v10, groupKey:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v12, :cond_5

    .line 234
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #similarPerson:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    check-cast v15, Lcom/android/providers/media/RecommendFace$SimilarPerson;

    .line 235
    .restart local v15       #similarPerson:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    iget v3, v15, Lcom/android/providers/media/RecommendFace$SimilarPerson;->mPersonId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/media/RecommendFace;->loadGroupKey(I)I

    move-result v10

    .line 236
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    invoke-static {v3, v10, v9}, Lcom/android/providers/media/NativeApi;->groupMatch(III)I

    move-result v3

    iput v3, v15, Lcom/android/providers/media/RecommendFace$SimilarPerson;->mScore:I

    .line 237
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/providers/media/RecommendFace;->unloadGroupKey(I)V

    .line 233
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 229
    .end local v10           #groupKey:I
    .end local v11           #i:I
    .end local v15           #similarPerson:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 239
    .restart local v10       #groupKey:I
    .restart local v11       #i:I
    .restart local v15       #similarPerson:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    invoke-static {v3, v9}, Lcom/android/providers/media/NativeApi;->unLoadGroup(II)V

    .line 240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RecommendFace;->mFaceCopector:Ljava/util/Comparator;

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 241
    const/4 v3, 0x3

    if-le v12, v3, :cond_6

    const/4 v14, 0x3

    .line 242
    :goto_2
    if-lez v14, :cond_7

    .line 243
    new-array v13, v14, [I

    .line 244
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v14, :cond_7

    .line 245
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/media/RecommendFace$SimilarPerson;

    iget v3, v3, Lcom/android/providers/media/RecommendFace$SimilarPerson;->mPersonId:I

    aput v3, v13, v11

    .line 246
    const-string v4, "haha"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/media/RecommendFace$SimilarPerson;

    iget v3, v3, Lcom/android/providers/media/RecommendFace$SimilarPerson;->mPersonId:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",score = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/media/RecommendFace$SimilarPerson;

    iget v3, v3, Lcom/android/providers/media/RecommendFace$SimilarPerson;->mScore:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    move v14, v12

    .line 241
    goto :goto_2

    :cond_7
    move-object v3, v13

    .line 250
    goto/16 :goto_0
.end method

.method public recomendFaces(II)V
    .locals 17
    .parameter "faceId"
    .parameter "personId"

    .prologue
    .line 132
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/media/RecommendFace;->loadGroupKey(I)I

    move-result v6

    .line 133
    .local v6, groupKey:I
    const/4 v5, 0x0

    .line 134
    .local v5, group:I
    const/4 v9, 0x0

    .line 135
    .local v9, score:I
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .local v11, values:Landroid/content/ContentValues;
    if-nez v6, :cond_0

    .line 176
    :goto_0
    return-void

    .line 139
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 140
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/RecommendFace;->getGroups()[I

    move-result-object v7

    .line 141
    .local v7, groups:[I
    if-eqz v7, :cond_3

    .line 142
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v12, v7

    if-ge v8, v12, :cond_3

    .line 143
    const/4 v9, 0x0

    .line 144
    aget v12, v7, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/media/RecommendFace;->loadGroup(I)I

    move-result v5

    .line 145
    if-eqz v5, :cond_2

    .line 146
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    invoke-static {v12, v6, v5}, Lcom/android/providers/media/NativeApi;->groupMatch(III)I

    move-result v9

    .line 147
    const/16 v12, 0x2d

    if-le v9, v12, :cond_1

    .line 148
    const-string v12, "recommended_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    sget-object v12, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    const-string v13, "group_id=? and person_id=?"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aget v16, v7, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v2, v12, v11, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 151
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    invoke-static {v12, v5}, Lcom/android/providers/media/NativeApi;->unLoadGroup(II)V

    .line 142
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 157
    .end local v8           #i:I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/RecommendFace;->getUngroupFaces()[Lcom/android/providers/media/RecommendFace$FaceItem;

    move-result-object v4

    .line 158
    .local v4, faces:[Lcom/android/providers/media/RecommendFace$FaceItem;
    if-eqz v4, :cond_6

    .line 159
    const/4 v12, 0x1

    new-array v3, v12, [I

    .line 160
    .local v3, faceData:[I
    const/4 v10, 0x0

    .line 161
    .local v10, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2
    array-length v12, v4

    if-ge v8, v12, :cond_6

    .line 162
    const/4 v12, 0x0

    aget-object v13, v4, v8

    iget v13, v13, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceData:I

    aput v13, v3, v12

    .line 163
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v12, v3, v13, v14}, Lcom/android/providers/media/NativeApi;->loadGroup(I[IIZ)I

    move-result v5

    .line 164
    if-eqz v5, :cond_5

    .line 165
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    invoke-static {v12, v6, v5}, Lcom/android/providers/media/NativeApi;->groupMatch(III)I

    move-result v9

    .line 166
    const/16 v12, 0x32

    if-le v9, v12, :cond_4

    .line 167
    const-string v12, "recommended_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    sget-object v12, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    aget-object v13, v4, v8

    iget v13, v13, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceId:I

    int-to-long v13, v13

    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 169
    const-string v12, "recommended_id=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 171
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    invoke-static {v12, v5}, Lcom/android/providers/media/NativeApi;->unLoadGroup(II)V

    .line 161
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 175
    .end local v3           #faceData:[I
    .end local v8           #i:I
    .end local v10           #uri:Landroid/net/Uri;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/providers/media/RecommendFace;->unloadGroupKey(I)V

    goto/16 :goto_0
.end method
