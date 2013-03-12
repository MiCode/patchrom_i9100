.class Landroid/widget/DatePicker$3;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Landroid/widget/DatePicker$3;->this$0:Landroid/widget/DatePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 313
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 318
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 315
    :pswitch_0
    iget-object v0, p0, Landroid/widget/DatePicker$3;->this$0:Landroid/widget/DatePicker;

    #calls: Landroid/widget/DatePicker;->updateInputState()V
    invoke-static {v0}, Landroid/widget/DatePicker;->access$1000(Landroid/widget/DatePicker;)V

    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
