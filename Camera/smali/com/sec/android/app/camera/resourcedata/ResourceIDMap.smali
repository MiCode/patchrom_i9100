.class public Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;
.super Ljava/lang/Object;
.source "ResourceIDMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    }
.end annotation


# instance fields
.field protected mResourceIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 20

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    .line 50
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 52
    .local v19, country_code:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0201b9

    const v4, 0x7f0201b9

    const v5, 0x7f0201b9

    const/high16 v6, 0x7f09

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0201b5

    const v4, 0x7f0201b5

    const/4 v5, 0x0

    const/high16 v6, 0x7f09

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0201b5

    const v4, 0x7f0201b5

    const/4 v5, 0x0

    const v6, 0x7f0900f6

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02011e

    const v4, 0x7f02011f

    const/4 v5, 0x0

    const v6, 0x7f0900ce

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020097

    const v4, 0x7f020098

    const/4 v5, 0x0

    const v6, 0x7f0900b4

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0201b5

    const v4, 0x7f0201b5

    const/4 v5, 0x0

    const v6, 0x7f0900b3

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020144

    const v4, 0x7f020145

    const/4 v5, 0x0

    const v6, 0x7f0900a6

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0200e0

    const v4, 0x7f0200e0

    const/4 v5, 0x0

    const v6, 0x7f0900a9

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020120

    const v4, 0x7f020121

    const/4 v5, 0x0

    const v6, 0x7f090016

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020055

    const v4, 0x7f020055

    const/4 v5, 0x0

    const v6, 0x7f0900b8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0201b5

    const v4, 0x7f0201b5

    const/4 v5, 0x0

    const v6, 0x7f0900a8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const v6, 0x7f0900b6

    .line 117
    .local v6, exposureValueString:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020091

    const v4, 0x7f020092

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02007d

    const v10, 0x7f02007e

    const/4 v11, 0x0

    const v12, 0x7f0900ad

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900ac

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020046

    const v10, 0x7f020046

    const/4 v11, 0x0

    const v12, 0x7f0900af

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900ba

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900bc

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900be

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900b9

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900c2

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900bf

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900cd

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900c0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900aa

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201de

    const v10, 0x7f0201df

    const/4 v11, 0x0

    const v12, 0x7f0900ab

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x46

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f09017c

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x43

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900d0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900b0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900c5

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900c6

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200da

    const v10, 0x7f0200db

    const/4 v11, 0x0

    const v12, 0x7f0900c7

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900cb

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020071

    const v10, 0x7f020074

    const/4 v11, 0x0

    const v12, 0x7f090031

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02011a

    const v10, 0x7f02011b

    const/4 v11, 0x0

    const v12, 0x7f0900cf

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbbc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900a9

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbb9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200cf

    const v10, 0x7f0200cf

    const/4 v11, 0x0

    const v12, 0x7f0900b7

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900a6

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbd0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020120

    const v10, 0x7f020121

    const/4 v11, 0x0

    const v12, 0x7f090016

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbbb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020097

    const v10, 0x7f020098

    const/4 v11, 0x0

    const v12, 0x7f0900b4

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900a8

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xbc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020091

    const v4, 0x7f020092

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbcf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900cb

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbbf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900ac

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02007d

    const v10, 0x7f02007e

    const/4 v11, 0x0

    const v12, 0x7f0900ad

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbc2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900be

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbc3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900c3

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbd7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f090151

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbcc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900c2

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbcd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900c0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbc9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900c5

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbda

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200da

    const v10, 0x7f0200db

    const/4 v11, 0x0

    const v12, 0x7f0900c6

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200da

    const v10, 0x7f0200db

    const/4 v11, 0x0

    const v12, 0x7f0900c7

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbcb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900c4

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbd6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900bc

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbd8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f090168

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f090173

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbdf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f09017c

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbde

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900d0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbdb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f090173

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbdc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900bf

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f0900c1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02011e

    const v10, 0x7f02011f

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02011e

    const v10, 0x7f02011f

    const/4 v11, 0x0

    const v12, 0x7f09009e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1068

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02011a

    const v10, 0x7f02011b

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1069

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02011a

    const v10, 0x7f02011b

    const/4 v11, 0x0

    const v12, 0x7f09009e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020146

    const v10, 0x7f020147

    const/4 v11, 0x0

    const v12, 0x7f090023

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x12d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020130

    const v10, 0x7f020131

    const/4 v11, 0x0

    const v12, 0x7f090024

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x12e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02013e

    const v10, 0x7f02013f

    const/4 v11, 0x0

    const v12, 0x7f090026

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x12f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020148

    const v10, 0x7f020149

    const/4 v11, 0x0

    const v12, 0x7f090027

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x130

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x131

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f090028

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x133

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02012a

    const v10, 0x7f02012b

    const/4 v11, 0x0

    const v12, 0x7f090029

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x135

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f09002b

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x136

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020124

    const v10, 0x7f020125

    const/4 v11, 0x0

    const v12, 0x7f09002c

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x137

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f09002d

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x139

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02012e

    const v10, 0x7f02012f

    const/4 v11, 0x0

    const v12, 0x7f09002e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x13a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200ad

    const v10, 0x7f0200ae

    const/4 v11, 0x0

    const v12, 0x7f090030

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x13b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020122

    const v10, 0x7f020123

    const/4 v11, 0x0

    const v12, 0x7f09002f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x13c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020071

    const v10, 0x7f020074

    const/4 v11, 0x0

    const v12, 0x7f090031

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x13f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02013a

    const v10, 0x7f02013b

    const/4 v11, 0x0

    const v12, 0x7f090034

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x13d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020005

    const v10, 0x7f020006

    const/4 v11, 0x0

    const v12, 0x7f090032

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x13e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a1

    const v10, 0x7f0200a2

    const/4 v11, 0x0

    const v12, 0x7f090079

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x140

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020056

    const v10, 0x7f020057

    const/4 v11, 0x0

    const v12, 0x7f09013f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x141

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020058

    const v10, 0x7f020059

    const/4 v11, 0x0

    const v12, 0x7f090142

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020144

    const v10, 0x7f020145

    const/4 v11, 0x0

    const v12, 0x7f090090

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020142

    const v10, 0x7f020143

    const/4 v11, 0x0

    const v12, 0x7f090091

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1f6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020138

    const v10, 0x7f020139

    const/4 v11, 0x0

    const v12, 0x7f090092

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1f7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02013c

    const v10, 0x7f02013d

    const/4 v11, 0x0

    const v12, 0x7f090099

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1f8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02014a

    const v10, 0x7f02014b

    const/4 v11, 0x0

    const v12, 0x7f090093

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1f9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020140

    const v10, 0x7f020141

    const/4 v11, 0x0

    const v12, 0x7f090094

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020128

    const v10, 0x7f020129

    const/4 v11, 0x0

    const v12, 0x7f090095

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1fb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02014c

    const v10, 0x7f02014d

    const/4 v11, 0x0

    const v12, 0x7f090096

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020132

    const v10, 0x7f020133

    const/4 v11, 0x0

    const v12, 0x7f090097

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1fd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020134

    const v10, 0x7f020135

    const/4 v11, 0x0

    const v12, 0x7f090098

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020136

    const v10, 0x7f020137

    const/4 v11, 0x0

    const v12, 0x7f09009a

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02014e

    const v10, 0x7f02014f

    const/4 v11, 0x0

    const v12, 0x7f09009b

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02012c

    const v10, 0x7f02012d

    const/4 v11, 0x0

    const v12, 0x7f09009c

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x201

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020126

    const v10, 0x7f020127

    const/4 v11, 0x0

    const v12, 0x7f09009d

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x258

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020095

    const v10, 0x7f020096

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x259

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020097

    const v10, 0x7f020098

    const/4 v11, 0x0

    const v12, 0x7f09009e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x25a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020093

    const v10, 0x7f020094

    const/4 v11, 0x0

    const v12, 0x7f090076

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x25b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020099

    const v10, 0x7f02009a

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x25c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020095

    const v10, 0x7f020096

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x25d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020097

    const v10, 0x7f020098

    const/4 v11, 0x0

    const v12, 0x7f09009e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x25e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020093

    const v10, 0x7f020094

    const/4 v11, 0x0

    const v12, 0x7f090076

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x25f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020099

    const v10, 0x7f02009a

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x2bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02009f

    const v10, 0x7f0200a0

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x2bd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02009f

    const v10, 0x7f0200a0

    const/4 v11, 0x0

    const v12, 0x7f090077

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x2be

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a3

    const v10, 0x7f0200a4

    const/4 v11, 0x0

    const v12, 0x7f090078

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x2bf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a1

    const v10, 0x7f0200a2

    const/4 v11, 0x0

    const v12, 0x7f090079

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x320

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020165

    const v10, 0x7f020166

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x321

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020161

    const v10, 0x7f020162

    const/4 v11, 0x0

    const v12, 0x7f09007d

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x322

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020163

    const v10, 0x7f020164

    const/4 v11, 0x0

    const v12, 0x7f09007e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x323

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02015f

    const v10, 0x7f020160

    const/4 v11, 0x0

    const v12, 0x7f09007f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x324

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020165

    const v10, 0x7f020166

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x325

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020161

    const v10, 0x7f020162

    const/4 v11, 0x0

    const v12, 0x7f09007d

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x326

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020163

    const v10, 0x7f020164

    const/4 v11, 0x0

    const v12, 0x7f09007e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x327

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02015f

    const v10, 0x7f020160

    const/4 v11, 0x0

    const v12, 0x7f09007f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x384

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02016d

    const v10, 0x7f02016e

    const/4 v11, 0x0

    const v12, 0x7f090039

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x385

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020171

    const v10, 0x7f020172

    const/4 v11, 0x0

    const v12, 0x7f09003b

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x386

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02016f

    const v10, 0x7f020170

    const/4 v11, 0x0

    const v12, 0x7f09003a

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x387

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020177

    const v10, 0x7f020178

    const/4 v11, 0x0

    const v12, 0x7f09003f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x388

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020173

    const v10, 0x7f020174

    const/4 v11, 0x0

    const v12, 0x7f09003c

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x389

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020179

    const v10, 0x7f02017a

    const/4 v11, 0x0

    const v12, 0x7f09003e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x38a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020175

    const v10, 0x7f020176

    const/4 v11, 0x0

    const v12, 0x7f09003d

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x38b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02016d

    const v10, 0x7f02016e

    const/4 v11, 0x0

    const v12, 0x7f090039

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x38c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020171

    const v10, 0x7f020172

    const/4 v11, 0x0

    const v12, 0x7f09003b

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x38d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02016f

    const v10, 0x7f020170

    const/4 v11, 0x0

    const v12, 0x7f09003a

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x38e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020177

    const v10, 0x7f020178

    const/4 v11, 0x0

    const v12, 0x7f09003f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x38f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020173

    const v10, 0x7f020174

    const/4 v11, 0x0

    const v12, 0x7f09003c

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x390

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020179

    const v10, 0x7f02017a

    const/4 v11, 0x0

    const v12, 0x7f09003e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x391

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020175

    const v10, 0x7f020176

    const/4 v11, 0x0

    const v12, 0x7f09003d

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02001e

    const v10, 0x7f02001f

    const/4 v11, 0x0

    const v12, 0x7f09016a

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02001c

    const v10, 0x7f02001d

    const/4 v11, 0x0

    const v12, 0x7f090049

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020014

    const v10, 0x7f020015

    const/4 v11, 0x0

    const v12, 0x7f090047

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020197

    const v10, 0x7f020198

    const/4 v11, 0x0

    const v12, 0x7f090048

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3ec

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02001e

    const v10, 0x7f02001f

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02001e

    const v10, 0x7f02001f

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02001e

    const v10, 0x7f02001f

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3ef

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02001e

    const v10, 0x7f02001f

    const/4 v11, 0x0

    const v12, 0x7f09004a

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02001e

    const v10, 0x7f02001f

    const/4 v11, 0x0

    const v12, 0x7f09004b

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02001e

    const v10, 0x7f02001f

    const/4 v11, 0x0

    const v12, 0x7f09004d

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3fb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02001e

    const v10, 0x7f02001f

    const/4 v11, 0x0

    const v12, 0x7f09004e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020028

    const v10, 0x7f020029

    const/4 v11, 0x0

    const v12, 0x7f09004f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020018

    const v10, 0x7f020019

    const/4 v11, 0x0

    const v12, 0x7f090052

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3fd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020026

    const v10, 0x7f020027

    const/4 v11, 0x0

    const v12, 0x7f090053

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020020

    const v10, 0x7f020021

    const/4 v11, 0x0

    const v12, 0x7f090050

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020024

    const v10, 0x7f020025

    const/4 v11, 0x0

    const v12, 0x7f090051

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x401

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020016

    const v10, 0x7f020017

    const/4 v11, 0x0

    const v12, 0x7f090054

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x403

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02001a

    const v10, 0x7f02001b

    const/4 v11, 0x0

    const v12, 0x7f090055

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x402

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020022

    const v10, 0x7f020023

    const/4 v11, 0x0

    const v12, 0x7f090056

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x40e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020020

    const v10, 0x7f020021

    const/4 v11, 0x0

    const v12, 0x7f090057

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02001e

    const v10, 0x7f02001f

    const/4 v11, 0x0

    const v12, 0x7f09016a

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02001c

    const v10, 0x7f02001d

    const/4 v11, 0x0

    const v12, 0x7f090049

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020014

    const v10, 0x7f020015

    const/4 v11, 0x0

    const v12, 0x7f090047

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020197

    const v10, 0x7f020198

    const/4 v11, 0x0

    const v12, 0x7f090048

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02001e

    const v10, 0x7f02001f

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02001e

    const v10, 0x7f02001f

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02001e

    const v10, 0x7f02001f

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02001e

    const v10, 0x7f02001f

    const/4 v11, 0x0

    const v12, 0x7f09004a

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02001e

    const v10, 0x7f02001f

    const/4 v11, 0x0

    const v12, 0x7f09004b

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x404

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02001e

    const v10, 0x7f02001f

    const/4 v11, 0x0

    const v12, 0x7f09004d

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x405

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02001e

    const v10, 0x7f02001f

    const/4 v11, 0x0

    const v12, 0x7f09004e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x406

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020028

    const v10, 0x7f020029

    const/4 v11, 0x0

    const v12, 0x7f09004f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x408

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020018

    const v10, 0x7f020019

    const/4 v11, 0x0

    const v12, 0x7f090052

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x407

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020026

    const v10, 0x7f020027

    const/4 v11, 0x0

    const v12, 0x7f090053

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x40a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020020

    const v10, 0x7f020021

    const/4 v11, 0x0

    const v12, 0x7f090050

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x409

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020024

    const v10, 0x7f020025

    const/4 v11, 0x0

    const v12, 0x7f090051

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x40b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020016

    const v10, 0x7f020017

    const/4 v11, 0x0

    const v12, 0x7f090054

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x40d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02001a

    const v10, 0x7f02001b

    const/4 v11, 0x0

    const v12, 0x7f090055

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x40c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020022

    const v10, 0x7f020023

    const/4 v11, 0x0

    const v12, 0x7f090056

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x40f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020020

    const v10, 0x7f020021

    const/4 v11, 0x0

    const v12, 0x7f090057

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x44c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200bf

    const v10, 0x7f0200c0

    const/4 v11, 0x0

    const v12, 0x7f090039

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x44d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200bb

    const v10, 0x7f0200bc

    const/4 v11, 0x0

    const v12, 0x7f090040

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x44e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200b5

    const v10, 0x7f0200b6

    const/4 v11, 0x0

    const v12, 0x7f090041

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x44f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200b7

    const v10, 0x7f0200b8

    const/4 v11, 0x0

    const v12, 0x7f090042

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x450

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200b9

    const v10, 0x7f0200ba

    const/4 v11, 0x0

    const v12, 0x7f090043

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x451

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200bd

    const v10, 0x7f0200be

    const/4 v11, 0x0

    const v12, 0x7f090044

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x452

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x453

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f090045

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x454

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x455

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const v12, 0x7f090046

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x456

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200c3

    const v10, 0x7f0200c4

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x457

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200c1

    const v10, 0x7f0200c2

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x458

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b5

    const v10, 0x7f0201b5

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x4b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200c5

    const v10, 0x7f0200c6

    const/4 v11, 0x0

    const v12, 0x7f090083

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x4b1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200c9

    const v10, 0x7f0200ca

    const/4 v11, 0x0

    const v12, 0x7f090085

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x4b2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200c7

    const v10, 0x7f0200c8

    const/4 v11, 0x0

    const v12, 0x7f090086

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x578

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020049

    const v10, 0x7f02004a

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x579

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02004b

    const v10, 0x7f02004c

    const/4 v11, 0x0

    const v12, 0x7f09009e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x57a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020049

    const v10, 0x7f02004a

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x57b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02004b

    const v10, 0x7f02004c

    const/4 v11, 0x0

    const v12, 0x7f09009e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x5dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02004d

    const v10, 0x7f02004e

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x5dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02004f

    const v10, 0x7f020050

    const/4 v11, 0x0

    const v12, 0x7f09009e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x5de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02004d

    const v10, 0x7f02004e

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x5df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02004f

    const v10, 0x7f020050

    const/4 v11, 0x0

    const v12, 0x7f09009e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x640

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02005b

    const v10, 0x7f02005c

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x641

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02005d

    const v10, 0x7f02005e

    const/4 v11, 0x0

    const v12, 0x7f09009e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x6a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200b3

    const v10, 0x7f0200b4

    const/4 v11, 0x0

    const v12, 0x7f09007b

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x6a5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200af

    const v10, 0x7f0200b0

    const/4 v11, 0x0

    const v12, 0x7f09007c

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x6a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200b1

    const v10, 0x7f0200b2

    const/4 v11, 0x0

    const v12, 0x7f090035

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x6a7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200b3

    const v10, 0x7f0200b4

    const/4 v11, 0x0

    const v12, 0x7f09007b

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x6a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200af

    const v10, 0x7f0200b0

    const/4 v11, 0x0

    const v12, 0x7f09007c

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x6a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200b1

    const v10, 0x7f0200b2

    const/4 v11, 0x0

    const v12, 0x7f090035

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x960

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200b3

    const v10, 0x7f0200b4

    const/4 v11, 0x0

    const v12, 0x7f09015d

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x963

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200b3

    const v10, 0x7f0200b4

    const/4 v11, 0x0

    const v12, 0x7f090160

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x962

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200b3

    const v10, 0x7f0200b4

    const/4 v11, 0x0

    const v12, 0x7f09015f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x961

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200b3

    const v10, 0x7f0200b4

    const/4 v11, 0x0

    const v12, 0x7f09015e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x964

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200b3

    const v10, 0x7f0200b4

    const/4 v11, 0x0

    const v12, 0x7f09015a

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x965

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200b3

    const v10, 0x7f0200b4

    const/4 v11, 0x0

    const v12, 0x7f09015b

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x966

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200b3

    const v10, 0x7f0200b4

    const/4 v11, 0x0

    const v12, 0x7f09015c

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x708

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a9

    const v10, 0x7f0200aa

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x709

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200ab

    const v10, 0x7f0200ac

    const/4 v11, 0x0

    const v12, 0x7f09009e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x70a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a9

    const v10, 0x7f0200aa

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x70b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200ab

    const v10, 0x7f0200ac

    const/4 v11, 0x0

    const v12, 0x7f09009e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x76c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020114

    const v10, 0x7f020115

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x76d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020116

    const v10, 0x7f020117

    const/4 v11, 0x0

    const v12, 0x7f09009e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1388

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02016b

    const v10, 0x7f02016c

    const/4 v11, 0x0

    const v12, 0x7f09017d

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1389

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020079

    const v10, 0x7f02007c

    const/4 v11, 0x0

    const v12, 0x7f09017e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x138a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02016b

    const v10, 0x7f02016c

    const/4 v11, 0x0

    const v12, 0x7f09017d

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x138b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020079

    const v10, 0x7f02007c

    const/4 v11, 0x0

    const v12, 0x7f09017e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1326

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020167

    const v10, 0x7f020168

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1327

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020169

    const v10, 0x7f02016a

    const/4 v11, 0x0

    const v12, 0x7f09009e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1324

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020167

    const v10, 0x7f020168

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1325

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020169

    const v10, 0x7f02016a

    const/4 v11, 0x0

    const v12, 0x7f09009e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xfa0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020120

    const v10, 0x7f020121

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xfa1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020120

    const v10, 0x7f020121

    const/4 v11, 0x0

    const v12, 0x7f09009e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020120

    const v10, 0x7f020121

    const/4 v11, 0x0

    const v12, 0x7f09010d

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020120

    const v10, 0x7f020121

    const/4 v11, 0x0

    const v12, 0x7f09010e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xfa4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020120

    const v10, 0x7f020121

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xfa5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020120

    const v10, 0x7f020121

    const/4 v11, 0x0

    const v12, 0x7f09009e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020120

    const v10, 0x7f020121

    const/4 v11, 0x0

    const v12, 0x7f09010f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x76f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020114

    const v10, 0x7f020115

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x770

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020116

    const v10, 0x7f020117

    const/4 v11, 0x0

    const v12, 0x7f09009e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a5

    const v10, 0x7f0200a6

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x7d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a7

    const v10, 0x7f0200a8

    const/4 v11, 0x0

    const v12, 0x7f09009e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x7d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a5

    const v10, 0x7f0200a6

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x7d4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a7

    const v10, 0x7f0200a8

    const/4 v11, 0x0

    const v12, 0x7f09009e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x834

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020154

    const v10, 0x7f020155

    const/4 v11, 0x0

    const v12, 0x7f09009f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x835

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020156

    const v10, 0x7f020157

    const/4 v11, 0x0

    const v12, 0x7f09009e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const v12, 0x7f090087

    .line 546
    .local v12, storageString:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x898

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020158

    const v10, 0x7f020159

    const/4 v11, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x899

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02015a

    const v16, 0x7f02015b

    const/16 v17, 0x0

    const v18, 0x7f090089

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x89a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020158

    const v10, 0x7f020159

    const/4 v11, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x89b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02015a

    const v16, 0x7f02015b

    const/16 v17, 0x0

    const v18, 0x7f090089

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x8fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200f8

    const v16, 0x7f0200f9

    const/16 v17, 0x0

    const v18, 0x7f090058

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x8fd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020110

    const v16, 0x7f020111

    const/16 v17, 0x0

    const v18, 0x7f090059

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x8fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020112

    const v16, 0x7f020113

    const/16 v17, 0x0

    const v18, 0x7f09005a

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x911

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020112

    const v16, 0x7f020113

    const/16 v17, 0x0

    const v18, 0x7f09005b

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x8ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200f6

    const v16, 0x7f0200f7

    const/16 v17, 0x0

    const v18, 0x7f09005c

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x900

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02010e

    const v16, 0x7f02010f

    const/16 v17, 0x0

    const v18, 0x7f09005d

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x916

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200f0

    const v16, 0x7f0200f1

    const/16 v17, 0x0

    const v18, 0x7f09005e

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x901

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200f0

    const v16, 0x7f0200f1

    const/16 v17, 0x0

    const v18, 0x7f09005f

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x902

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02010c

    const v16, 0x7f02010d

    const/16 v17, 0x0

    const v18, 0x7f090060

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x912

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02010a

    const v16, 0x7f02010b

    const/16 v17, 0x0

    const v18, 0x7f090061

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x903

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200ee

    const v16, 0x7f0200ef

    const/16 v17, 0x0

    const v18, 0x7f090062

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x904

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020108

    const v16, 0x7f020109

    const/16 v17, 0x0

    const v18, 0x7f090063

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x914

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020108

    const v16, 0x7f020109

    const/16 v17, 0x0

    const v18, 0x7f090064

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x917

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020106

    const v16, 0x7f020107

    const/16 v17, 0x0

    const v18, 0x7f090065

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x905

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200ea

    const v16, 0x7f0200eb

    const/16 v17, 0x0

    const v18, 0x7f090068

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x906

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020104

    const v16, 0x7f020105

    const/16 v17, 0x0

    const v18, 0x7f090069

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x918

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020102

    const v16, 0x7f020103

    const/16 v17, 0x0

    const v18, 0x7f090067

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x919

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020100

    const v16, 0x7f020101

    const/16 v17, 0x0

    const v18, 0x7f09006a

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x915

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200e8

    const v16, 0x7f0200e9

    const/16 v17, 0x0

    const v18, 0x7f09006b

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x907

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200e6

    const v16, 0x7f0200e7

    const/16 v17, 0x0

    const v18, 0x7f09006c

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x913

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200fe

    const v16, 0x7f0200ff

    const/16 v17, 0x0

    const v18, 0x7f09006d

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x91a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200fc

    const v16, 0x7f0200fd

    const/16 v17, 0x0

    const v18, 0x7f09006e

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x908

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200de

    const v16, 0x7f0200df

    const/16 v17, 0x0

    const v18, 0x7f090071

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x909

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200fa

    const v16, 0x7f0200fb

    const/16 v17, 0x0

    const v18, 0x7f09006f

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x91b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200dc

    const v16, 0x7f0200dd

    const/16 v17, 0x0

    const v18, 0x7f090073

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x91c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200dc

    const v16, 0x7f0200dd

    const/16 v17, 0x0

    const v18, 0x7f090075

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x90a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200e4

    const v16, 0x7f0200e5

    const/16 v17, 0x0

    const v18, 0x7f090066

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x90b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200e0

    const v16, 0x7f0200e1

    const/16 v17, 0x0

    const v18, 0x7f09006d

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x90c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200f4

    const v16, 0x7f0200f5

    const/16 v17, 0x0

    const v18, 0x7f090070

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x90d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200f2

    const v16, 0x7f0200f3

    const/16 v17, 0x0

    const v18, 0x7f090071

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x90e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201b5

    const v16, 0x7f0201b5

    const/16 v17, 0x0

    const v18, 0x7f090072

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x90f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200ec

    const v16, 0x7f0200ed

    const/16 v17, 0x0

    const v18, 0x7f090073

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x910

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200e2

    const v16, 0x7f0200e3

    const/16 v17, 0x0

    const v18, 0x7f090074

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200d6

    const v16, 0x7f0200d7

    const/16 v17, 0x0

    const v18, 0x7f09008a

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200d4

    const v16, 0x7f0200d5

    const/16 v17, 0x0

    const v18, 0x7f09008b

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200d8

    const v16, 0x7f0200d9

    const/16 v17, 0x0

    const v18, 0x7f09008d

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200d0

    const v16, 0x7f0200d1

    const/16 v17, 0x0

    const v18, 0x7f09008e

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200d2

    const v16, 0x7f0200d3

    const/16 v17, 0x0

    const v18, 0x7f09008c

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201b5

    const v16, 0x7f0201b5

    const/16 v17, 0x0

    const/high16 v18, 0x7f09

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc81

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201b5

    const v16, 0x7f0201b5

    const/16 v17, 0x0

    const/high16 v18, 0x7f09

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xce5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201b5

    const v16, 0x7f0201b5

    const/16 v17, 0x0

    const/high16 v18, 0x7f09

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xce6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201b5

    const v16, 0x7f0201b5

    const/16 v17, 0x0

    const/high16 v18, 0x7f09

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xd48

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200cb

    const v16, 0x7f0200cc

    const/16 v17, 0x0

    const v18, 0x7f09009f

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xd49

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200cd

    const v16, 0x7f0200ce

    const/16 v17, 0x0

    const v18, 0x7f09009e

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xd4a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200cb

    const v16, 0x7f0200cc

    const/16 v17, 0x0

    const v18, 0x7f09009f

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xd4b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0200cd

    const v16, 0x7f0200ce

    const/16 v17, 0x0

    const v18, 0x7f09009e

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xdac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201b5

    const v16, 0x7f0201b5

    const/16 v17, 0x0

    const v18, 0x7f09009f

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xdad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201b5

    const v16, 0x7f0201b5

    const/16 v17, 0x0

    const v18, 0x7f09009e

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02007f

    const v16, 0x7f020080

    const/16 v17, 0x0

    const v18, 0x7f0900f7

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02008f

    const v16, 0x7f020090

    const/16 v17, 0x0

    const v18, 0x7f0900ff

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02008f

    const v16, 0x7f020090

    const/16 v17, 0x0

    const v18, 0x7f0900ff

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02008d

    const v16, 0x7f02008e

    const/16 v17, 0x0

    const v18, 0x7f0900fe

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02008b

    const v16, 0x7f02008c

    const/16 v17, 0x0

    const v18, 0x7f0900fd

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020089

    const v16, 0x7f02008a

    const/16 v17, 0x0

    const v18, 0x7f0900fc

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020087

    const v16, 0x7f020088

    const/16 v17, 0x0

    const v18, 0x7f0900fb

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020085

    const v16, 0x7f020086

    const/16 v17, 0x0

    const v18, 0x7f0900fa

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020083

    const v16, 0x7f020084

    const/16 v17, 0x0

    const v18, 0x7f0900f9

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020081

    const v16, 0x7f020082

    const/16 v17, 0x0

    const v18, 0x7f0900f8

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02007f

    const v16, 0x7f020080

    const/16 v17, 0x0

    const v18, 0x7f0900f7

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe74

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201bf

    const v16, 0x7f0201bf

    const/16 v17, 0x0

    const v18, 0x7f0900f6

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xf3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02009b

    const v16, 0x7f02009c

    const/16 v17, 0x0

    const v18, 0x7f09009f

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xf3d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02009d

    const v16, 0x7f02009e

    const/16 v17, 0x0

    const v18, 0x7f09009e

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1130

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02007d

    const v16, 0x7f02007e

    const/16 v17, 0x0

    const v18, 0x7f090169

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1131

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02007d

    const v16, 0x7f02007e

    const/16 v17, 0x0

    const v18, 0x7f09016b

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1132

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02007d

    const v16, 0x7f02007e

    const/16 v17, 0x0

    const v18, 0x7f09016c

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1133

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02007d

    const v16, 0x7f02007e

    const/16 v17, 0x0

    const v18, 0x7f09016d

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1134

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02007d

    const v16, 0x7f02007e

    const/16 v17, 0x0

    const v18, 0x7f09016e

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1135

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02007d

    const v16, 0x7f02007e

    const/16 v17, 0x0

    const v18, 0x7f09016f

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1136

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02007d

    const v16, 0x7f02007e

    const/16 v17, 0x0

    const v18, 0x7f090170

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1194

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020072

    const v16, 0x7f020073

    const/16 v17, 0x0

    const v18, 0x7f09009f

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1195

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020071

    const v16, 0x7f020074

    const/16 v17, 0x0

    const v18, 0x7f09009e

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x11f8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201af

    const v16, 0x7f0201b0

    const/16 v17, 0x0

    const v18, 0x7f09009f

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x11f9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201b1

    const v16, 0x7f0201b2

    const/16 v17, 0x0

    const v18, 0x7f09009e

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x125c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201af

    const v16, 0x7f0201b0

    const/16 v17, 0x0

    const v18, 0x7f09009f

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x125d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f0201b1

    const v16, 0x7f0201b2

    const/16 v17, 0x0

    const v18, 0x7f09009e

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x12c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020052

    const v16, 0x7f020053

    const/16 v17, 0x0

    const v18, 0x7f09009f

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x12c1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020051

    const v16, 0x7f020054

    const/16 v17, 0x0

    const v18, 0x7f09009e

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 690
    return-void
.end method

.method public get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .locals 2
    .parameter "commandId"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getResourceIDByIndex(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .locals 2
    .parameter "index"

    .prologue
    .line 684
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 685
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    return-object v1
.end method
