.class public Lcom/sec/android/app/fm/ui/RTPTagList;
.super Ljava/lang/Object;
.source "RTPTagList.java"


# instance fields
.field private tagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/fm/ui/RTPTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method public constructor <init>(ILcom/sec/android/app/fm/ui/RTPTagList;)V
    .locals 4
    .parameter "category"
    .parameter "baseTagList"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    .line 42
    iget-object v2, p2, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 44
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/fm/ui/RTPTag;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/ui/RTPTag;

    .line 46
    .local v1, t:Lcom/sec/android/app/fm/ui/RTPTag;
    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/RTPTag;->getTagCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 51
    :sswitch_0
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 52
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :sswitch_1
    and-int/lit8 v2, p1, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 56
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :sswitch_2
    and-int/lit8 v2, p1, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 60
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :sswitch_3
    and-int/lit8 v2, p1, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 74
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    .end local v1           #t:Lcom/sec/android/app/fm/ui/RTPTag;
    :cond_1
    return-void

    .line 46
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x9 -> :sswitch_0
        0x1d -> :sswitch_1
        0x27 -> :sswitch_2
        0x29 -> :sswitch_3
        0x2a -> :sswitch_3
        0x2b -> :sswitch_3
        0x2c -> :sswitch_3
        0x2d -> :sswitch_3
        0x2e -> :sswitch_3
        0x2f -> :sswitch_3
        0x30 -> :sswitch_3
        0x31 -> :sswitch_3
        0x33 -> :sswitch_3
        0x35 -> :sswitch_3
    .end sparse-switch
.end method

.method public static isMusicTag(Lcom/sec/android/app/fm/ui/RTPTag;)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/RTPTag;->getTagCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 316
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 314
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addTag(Lcom/sec/android/app/fm/ui/RTPTag;)Z
    .locals 4
    .parameter "tag"

    .prologue
    .line 89
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 90
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/fm/ui/RTPTag;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/ui/RTPTag;

    .line 92
    .local v1, t:Lcom/sec/android/app/fm/ui/RTPTag;
    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/RTPTag;->getTagCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/fm/ui/RTPTag;->getTagCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 93
    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    const/4 v2, 0x0

    .line 102
    .end local v1           #t:Lcom/sec/android/app/fm/ui/RTPTag;
    :goto_0
    return v2

    .line 96
    .restart local v1       #t:Lcom/sec/android/app/fm/ui/RTPTag;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 101
    .end local v1           #t:Lcom/sec/android/app/fm/ui/RTPTag;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .parameter "o"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, countOfEquals:I
    instance-of v11, p1, Lcom/sec/android/app/fm/ui/RTPTagList;

    if-nez v11, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v9

    :cond_1
    move-object v6, p1

    .line 253
    check-cast v6, Lcom/sec/android/app/fm/ui/RTPTagList;

    .line 254
    .local v6, rList:Lcom/sec/android/app/fm/ui/RTPTagList;
    iget-object v11, p0, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 255
    .local v4, lSize:I
    iget-object v11, v6, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 256
    .local v7, rSize:I
    const/4 v3, 0x0

    .line 258
    .local v3, isEqual:Z
    if-ne v4, v7, :cond_5

    .line 259
    iget-object v11, p0, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/fm/ui/RTPTag;

    .line 260
    .local v5, lTag:Lcom/sec/android/app/fm/ui/RTPTag;
    iget-object v11, v6, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/fm/ui/RTPTag;

    .line 261
    .local v8, rTag:Lcom/sec/android/app/fm/ui/RTPTag;
    invoke-virtual {v5, v8}, Lcom/sec/android/app/fm/ui/RTPTag;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 262
    add-int/lit8 v0, v0, 0x1

    .line 263
    goto :goto_1

    .line 267
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #lTag:Lcom/sec/android/app/fm/ui/RTPTag;
    .end local v8           #rTag:Lcom/sec/android/app/fm/ui/RTPTag;
    :cond_4
    if-ne v4, v0, :cond_0

    move v9, v10

    .line 268
    goto :goto_0

    .line 270
    :cond_5
    if-le v4, v7, :cond_a

    .line 271
    iget-object v11, p0, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/fm/ui/RTPTag;

    .line 272
    .restart local v5       #lTag:Lcom/sec/android/app/fm/ui/RTPTag;
    iget-object v11, v6, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/fm/ui/RTPTag;

    .line 273
    .restart local v8       #rTag:Lcom/sec/android/app/fm/ui/RTPTag;
    invoke-virtual {v5, v8}, Lcom/sec/android/app/fm/ui/RTPTag;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 274
    const/4 v3, 0x1

    .line 275
    add-int/lit8 v0, v0, 0x1

    .line 279
    .end local v8           #rTag:Lcom/sec/android/app/fm/ui/RTPTag;
    :cond_7
    if-nez v3, :cond_8

    .line 280
    invoke-virtual {v5}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 283
    :cond_8
    const/4 v3, 0x0

    goto :goto_2

    .line 285
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #lTag:Lcom/sec/android/app/fm/ui/RTPTag;
    :cond_9
    if-ne v7, v0, :cond_0

    move v9, v10

    .line 286
    goto/16 :goto_0

    .line 288
    :cond_a
    iget-object v11, v6, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/fm/ui/RTPTag;

    .line 289
    .restart local v8       #rTag:Lcom/sec/android/app/fm/ui/RTPTag;
    iget-object v11, p0, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/fm/ui/RTPTag;

    .line 290
    .restart local v5       #lTag:Lcom/sec/android/app/fm/ui/RTPTag;
    invoke-virtual {v5, v8}, Lcom/sec/android/app/fm/ui/RTPTag;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 291
    const/4 v3, 0x1

    .line 292
    add-int/lit8 v0, v0, 0x1

    .line 296
    .end local v5           #lTag:Lcom/sec/android/app/fm/ui/RTPTag;
    :cond_c
    if-nez v3, :cond_d

    .line 297
    invoke-virtual {v8}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 300
    :cond_d
    const/4 v3, 0x0

    goto :goto_3

    .line 302
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v8           #rTag:Lcom/sec/android/app/fm/ui/RTPTag;
    :cond_e
    if-ne v4, v0, :cond_0

    move v9, v10

    .line 303
    goto/16 :goto_0
.end method

.method public getTag(I)Lcom/sec/android/app/fm/ui/RTPTag;
    .locals 1
    .parameter "index"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/RTPTag;

    return-object v0
.end method

.method public getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;
    .locals 3
    .parameter "tagCode"

    .prologue
    .line 115
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 116
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/fm/ui/RTPTag;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/ui/RTPTag;

    .line 118
    .local v1, t:Lcom/sec/android/app/fm/ui/RTPTag;
    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/RTPTag;->getTagCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 121
    .end local v1           #t:Lcom/sec/android/app/fm/ui/RTPTag;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public haveTag(I)Z
    .locals 6
    .parameter "category"

    .prologue
    const/4 v3, 0x1

    .line 200
    iget-object v4, p0, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 201
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/fm/ui/RTPTag;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 202
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/ui/RTPTag;

    .line 203
    .local v1, t:Lcom/sec/android/app/fm/ui/RTPTag;
    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/RTPTag;->getTagCode()I

    move-result v2

    .line 205
    .local v2, tagCode:I
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 210
    :sswitch_0
    and-int/lit8 v4, p1, 0x1

    if-ne v4, v3, :cond_0

    .line 240
    .end local v1           #t:Lcom/sec/android/app/fm/ui/RTPTag;
    .end local v2           #tagCode:I
    :goto_1
    return v3

    .line 214
    .restart local v1       #t:Lcom/sec/android/app/fm/ui/RTPTag;
    .restart local v2       #tagCode:I
    :sswitch_1
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 218
    :sswitch_2
    and-int/lit8 v4, p1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 232
    :sswitch_3
    and-int/lit8 v4, p1, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 240
    .end local v1           #t:Lcom/sec/android/app/fm/ui/RTPTag;
    .end local v2           #tagCode:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 205
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x9 -> :sswitch_0
        0x1d -> :sswitch_1
        0x27 -> :sswitch_2
        0x29 -> :sswitch_3
        0x2a -> :sswitch_3
        0x2b -> :sswitch_3
        0x2c -> :sswitch_3
        0x2d -> :sswitch_3
        0x2e -> :sswitch_3
        0x2f -> :sswitch_3
        0x30 -> :sswitch_3
        0x31 -> :sswitch_3
        0x33 -> :sswitch_3
        0x35 -> :sswitch_3
    .end sparse-switch
.end method

.method public size()I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RTPTagList;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
