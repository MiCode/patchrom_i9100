.class public Lcom/sec/android/app/camera/glwidget/TwGLExamples$TwListAdapter;
.super Ljava/lang/Object;
.source "TwGLExamples.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLExamples;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLExamples;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLExamples;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples$TwListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExamples;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 152
    const/16 v0, 0xa

    return v0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .locals 11
    .parameter "position"
    .parameter "convertView"

    .prologue
    const/4 v2, 0x0

    const/16 v9, 0xff

    .line 156
    if-nez p2, :cond_0

    .line 157
    new-instance v10, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples$TwListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExamples;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLExamples;)Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    .line 158
    .local v10, item:Lcom/sec/android/glview/TwGLViewGroup;
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples$TwListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExamples;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLExamples;)Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v4, 0x7f0200e0

    const v5, 0x7f0201b4

    const/4 v6, 0x0

    const v7, 0x7f0201bc

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    .line 161
    .local v0, button:Lcom/sec/android/glview/TwGLButton;
    new-instance v3, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples$TwListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExamples;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mGLContext:Lcom/sec/android/glview/TwGLContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLExamples;)Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v5

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExamples$TwListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExamples;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLExamples;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLExamples;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLExamples;)Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f0900d4

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41a0

    invoke-static {v9, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    move v6, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FI)V

    .line 163
    .local v3, text:Lcom/sec/android/glview/TwGLText;
    invoke-virtual {v10, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 164
    invoke-virtual {v10, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 167
    .end local v0           #button:Lcom/sec/android/glview/TwGLButton;
    .end local v3           #text:Lcom/sec/android/glview/TwGLText;
    .end local v10           #item:Lcom/sec/android/glview/TwGLViewGroup;
    :goto_0
    return-object v10

    :cond_0
    move-object v10, p2

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method
