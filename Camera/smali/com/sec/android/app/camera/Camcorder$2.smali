.class Lcom/sec/android/app/camera/Camcorder$2;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 334
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 349
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 336
    :pswitch_1
    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/Camcorder;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
