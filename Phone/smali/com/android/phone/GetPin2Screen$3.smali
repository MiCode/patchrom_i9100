.class Lcom/android/phone/GetPin2Screen$3;
.super Ljava/lang/Object;
.source "GetPin2Screen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GetPin2Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GetPin2Screen;


# direct methods
.method constructor <init>(Lcom/android/phone/GetPin2Screen;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/phone/GetPin2Screen$3;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$3;->this$0:Lcom/android/phone/GetPin2Screen;

    #getter for: Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->access$000(Lcom/android/phone/GetPin2Screen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$3;->this$0:Lcom/android/phone/GetPin2Screen;

    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$3;->this$0:Lcom/android/phone/GetPin2Screen;

    const v2, 0x7f0e014c

    invoke-virtual {v1, v2}, Lcom/android/phone/GetPin2Screen;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/GetPin2Screen;->displayToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/GetPin2Screen;->access$200(Lcom/android/phone/GetPin2Screen;Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$3;->this$0:Lcom/android/phone/GetPin2Screen;

    #calls: Lcom/android/phone/GetPin2Screen;->returnResult()V
    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->access$300(Lcom/android/phone/GetPin2Screen;)V

    goto :goto_0
.end method
