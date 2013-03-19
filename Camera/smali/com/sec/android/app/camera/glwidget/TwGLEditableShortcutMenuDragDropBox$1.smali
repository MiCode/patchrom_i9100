.class Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox$1;
.super Ljava/lang/Object;
.source "TwGLEditableShortcutMenuDragDropBox.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->relocateItem(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;Lcom/sec/android/glview/TwGLView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mRelocating:Z
    invoke-static {v2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->access$002(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;Z)Z

    .line 139
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->setDroppability(Z)V

    .line 141
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    if-eqz v2, :cond_0

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetClipRect()V

    .line 145
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter "animation"

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method
