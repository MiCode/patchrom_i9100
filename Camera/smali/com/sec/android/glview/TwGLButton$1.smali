.class Lcom/sec/android/glview/TwGLButton$1;
.super Ljava/lang/Object;
.source "TwGLButton.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/glview/TwGLButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLButton;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/TwGLButton;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/android/glview/TwGLButton$1;->this$0:Lcom/sec/android/glview/TwGLButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton$1;->this$0:Lcom/sec/android/glview/TwGLButton;

    iput-boolean v1, v0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 113
    return v1
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter "animation"

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method
