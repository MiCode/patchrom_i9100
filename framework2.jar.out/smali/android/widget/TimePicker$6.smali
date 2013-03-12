.class Landroid/widget/TimePicker$6;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePicker;


# direct methods
.method constructor <init>(Landroid/widget/TimePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Landroid/widget/TimePicker$6;->this$0:Landroid/widget/TimePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 272
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 277
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 274
    :pswitch_0
    iget-object v0, p0, Landroid/widget/TimePicker$6;->this$0:Landroid/widget/TimePicker;

    #calls: Landroid/widget/TimePicker;->updateInputState()V
    invoke-static {v0}, Landroid/widget/TimePicker;->access$500(Landroid/widget/TimePicker;)V

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
