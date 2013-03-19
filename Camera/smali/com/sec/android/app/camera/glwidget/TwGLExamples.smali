.class public Lcom/sec/android/app/camera/glwidget/TwGLExamples;
.super Ljava/lang/Object;
.source "TwGLExamples.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLExamples$TwListAdapter;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGLContext:Lcom/sec/android/glview/TwGLContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/glview/TwGLContext;)V
    .locals 0
    .parameter "context"
    .parameter "glContext"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLExamples;)Lcom/sec/android/glview/TwGLContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLExamples;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public addGLImageExample(Lcom/sec/android/glview/TwGLViewGroup;)V
    .locals 6
    .parameter "rootView"

    .prologue
    const/4 v5, 0x0

    .line 123
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/high16 v3, 0x4396

    const/high16 v4, 0x4348

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 124
    .local v1, layout:Lcom/sec/android/glview/TwGLViewGroup;
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const v3, 0x7f0201f5

    invoke-direct {v0, v2, v5, v5, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    .line 125
    .local v0, image1:Lcom/sec/android/glview/TwGLImage;
    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 126
    invoke-virtual {p1, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 127
    return-void
.end method

.method public addGLListExample(Lcom/sec/android/glview/TwGLViewGroup;)V
    .locals 7
    .parameter "rootView"

    .prologue
    const/high16 v2, 0x43c8

    .line 143
    new-instance v0, Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/high16 v3, 0x42c8

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 144
    .local v0, list2:Lcom/sec/android/glview/TwGLList;
    new-instance v6, Lcom/sec/android/app/camera/glwidget/TwGLExamples$TwListAdapter;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/glwidget/TwGLExamples$TwListAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLExamples;)V

    .line 145
    .local v6, adapter:Lcom/sec/android/app/camera/glwidget/TwGLExamples$TwListAdapter;
    const v1, 0x7f020183

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setNinePatchBackground(I)Z

    .line 146
    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 147
    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 148
    return-void
.end method

.method public addGLTextExample(Lcom/sec/android/glview/TwGLViewGroup;)V
    .locals 13
    .parameter "rootView"

    .prologue
    const v9, 0x7f0900d4

    const/high16 v2, 0x43c8

    const/high16 v3, 0x4370

    const/high16 v5, 0x41a0

    const/16 v8, 0xff

    .line 130
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FI)V

    .line 131
    .local v0, text1:Lcom/sec/android/glview/TwGLText;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOrientation(I)V

    .line 132
    new-instance v6, Lcom/sec/android/glview/TwGLText;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    move v8, v2

    move v9, v3

    move v11, v5

    invoke-direct/range {v6 .. v12}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FI)V

    .line 133
    .local v6, text2:Lcom/sec/android/glview/TwGLText;
    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 134
    invoke-virtual {p1, v6}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 135
    return-void
.end method

.method public addGlButtonExample(Lcom/sec/android/glview/TwGLViewGroup;)V
    .locals 13
    .parameter "rootView"

    .prologue
    .line 97
    new-instance v11, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/high16 v5, 0x42c8

    const/high16 v6, 0x42c8

    invoke-direct {v11, v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 98
    .local v11, layout:Lcom/sec/android/glview/TwGLViewGroup;
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0200f4

    const v5, 0x7f0200f4

    const/4 v6, 0x0

    const v7, 0x7f0201bc

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    .line 101
    .local v0, button1:Lcom/sec/android/glview/TwGLButton;
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v4

    const v5, 0x7f0200e0

    const v6, 0x7f0200e0

    const/4 v7, 0x0

    const v8, 0x7f0201bc

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    .line 104
    .local v1, button2:Lcom/sec/android/glview/TwGLButton;
    invoke-virtual {v11, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 105
    invoke-virtual {v11, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 107
    new-instance v12, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/high16 v5, 0x42c8

    const/high16 v6, 0x42c8

    invoke-direct {v12, v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 108
    .local v12, layout2:Lcom/sec/android/glview/TwGLViewGroup;
    new-instance v2, Lcom/sec/android/glview/TwGLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0200f4

    const v7, 0x7f0200f4

    const/4 v8, 0x0

    const v9, 0x7f0201bc

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    .line 111
    .local v2, button3:Lcom/sec/android/glview/TwGLButton;
    new-instance v3, Lcom/sec/android/glview/TwGLButton;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    const v7, 0x7f0200e0

    const v8, 0x7f0200e0

    const/4 v9, 0x0

    const v10, 0x7f0201bc

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    .line 114
    .local v3, button4:Lcom/sec/android/glview/TwGLButton;
    invoke-virtual {v12, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 115
    invoke-virtual {v12, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 116
    const/4 v4, 0x3

    invoke-virtual {v12, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 118
    invoke-virtual {p1, v11}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 119
    invoke-virtual {p1, v12}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 120
    return-void
.end method

.method public startEditableShortcutExample(Lcom/sec/android/glview/TwGLViewGroup;)V
    .locals 25
    .parameter "rootView"

    .prologue
    .line 56
    new-instance v13, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0x7f0201f5

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    .line 57
    .local v13, i1:Lcom/sec/android/glview/TwGLImage;
    new-instance v17, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    const-string v24, "abcde"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    .line 58
    .local v17, t1:Lcom/sec/android/glview/TwGLText;
    new-instance v14, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0x7f020091

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    .line 59
    .local v14, i2:Lcom/sec/android/glview/TwGLImage;
    new-instance v18, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    const-string v24, "12345"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    .line 60
    .local v18, t2:Lcom/sec/android/glview/TwGLText;
    new-instance v15, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0x7f0201f5

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    .line 61
    .local v15, i3:Lcom/sec/android/glview/TwGLImage;
    new-instance v19, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v15}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    const-string v24, "67890"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    .line 62
    .local v19, t3:Lcom/sec/android/glview/TwGLText;
    new-instance v16, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0x7f020091

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    .line 63
    .local v16, i4:Lcom/sec/android/glview/TwGLImage;
    new-instance v20, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    const-string v24, "fghij"

    invoke-direct/range {v20 .. v24}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    .line 65
    .local v20, t4:Lcom/sec/android/glview/TwGLText;
    new-instance v9, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v9, v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 66
    .local v9, g1:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-virtual {v9, v13}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 67
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 69
    new-instance v10, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v10, v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 70
    .local v10, g2:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-virtual {v10, v14}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 71
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 73
    new-instance v11, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v11, v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 74
    .local v11, g3:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-virtual {v11, v15}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 75
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 77
    new-instance v12, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v12, v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 78
    .local v12, g4:Lcom/sec/android/glview/TwGLViewGroup;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 79
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 81
    new-instance v5, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    move-object/from16 v21, v0

    const/high16 v22, 0x42c8

    const/high16 v23, 0x42c8

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v5, v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 82
    .local v5, b1:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    new-instance v6, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    move-object/from16 v21, v0

    const/high16 v22, 0x42c8

    const/high16 v23, 0x4396

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v6, v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 83
    .local v6, b2:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    new-instance v7, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    move-object/from16 v21, v0

    const/high16 v22, 0x4396

    const/high16 v23, 0x42c8

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v7, v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 84
    .local v7, b3:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    new-instance v8, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    move-object/from16 v21, v0

    const/high16 v22, 0x4396

    const/high16 v23, 0x4396

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v8, v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 85
    .local v8, b4:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    invoke-virtual {v5, v9}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 86
    invoke-virtual {v6, v10}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 87
    invoke-virtual {v7, v11}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 88
    invoke-virtual {v8, v12}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 90
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 91
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 92
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 93
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 94
    return-void
.end method

.method public startRotationExample(Lcom/sec/android/glview/TwGLViewGroup;)V
    .locals 7
    .parameter "rootView"

    .prologue
    const v6, 0x7f0201f5

    const/high16 v5, 0x3f00

    const/4 v4, 0x1

    const/high16 v3, 0x4348

    .line 43
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-direct {v0, v2, v3, v3, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    .line 45
    .local v0, i1:Lcom/sec/android/glview/TwGLImage;
    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->rotateDegree(I)V

    .line 46
    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 47
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-direct {v1, v2, v3, v3, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    .line 48
    .local v1, i2:Lcom/sec/android/glview/TwGLImage;
    invoke-virtual {p1, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 49
    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 50
    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 51
    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLImage;->setCenterPivot(Z)V

    .line 52
    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLImage;->setRotateAnimation(Z)V

    .line 53
    return-void
.end method
