.class Lcom/android/phone/CallForwardEditPreference$1;
.super Ljava/lang/Object;
.source "CallForwardEditPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallForwardEditPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallForwardEditPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/CallForwardEditPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 67
    const-string v2, "default_vm_in_callforwarding"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    #getter for: Lcom/android/phone/CallForwardEditPreference;->mBeforeText:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/CallForwardEditPreference;->access$200(Lcom/android/phone/CallForwardEditPreference;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    #getter for: Lcom/android/phone/CallForwardEditPreference;->mVMPhoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/CallForwardEditPreference;->access$100(Lcom/android/phone/CallForwardEditPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    #getter for: Lcom/android/phone/CallForwardEditPreference;->bChangeNum:Z
    invoke-static {v2}, Lcom/android/phone/CallForwardEditPreference;->access$300(Lcom/android/phone/CallForwardEditPreference;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, oldNum:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    #getter for: Lcom/android/phone/CallForwardEditPreference;->mAddStartIndex:I
    invoke-static {v2}, Lcom/android/phone/CallForwardEditPreference;->access$400(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    #getter for: Lcom/android/phone/CallForwardEditPreference;->mAddStartIndex:I
    invoke-static {v3}, Lcom/android/phone/CallForwardEditPreference;->access$400(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    #getter for: Lcom/android/phone/CallForwardEditPreference;->mAddModifyCount:I
    invoke-static {v4}, Lcom/android/phone/CallForwardEditPreference;->access$500(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, newNum:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/CallForwardEditPreference;->bChangeNum:Z
    invoke-static {v2, v3}, Lcom/android/phone/CallForwardEditPreference;->access$302(Lcom/android/phone/CallForwardEditPreference;Z)Z

    .line 73
    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const-string v3, ""

    #setter for: Lcom/android/phone/CallForwardEditPreference;->mBeforeText:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/phone/CallForwardEditPreference;->access$202(Lcom/android/phone/CallForwardEditPreference;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v2, v2, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v2, v2, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 78
    .end local v0           #newNum:Ljava/lang/String;
    .end local v1           #oldNum:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 81
    const-string v0, "default_vm_in_callforwarding"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/phone/CallForwardEditPreference;->mBeforeText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->access$202(Lcom/android/phone/CallForwardEditPreference;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 86
    const-string v0, "default_vm_in_callforwarding"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    #setter for: Lcom/android/phone/CallForwardEditPreference;->mAddStartIndex:I
    invoke-static {v0, p2}, Lcom/android/phone/CallForwardEditPreference;->access$402(Lcom/android/phone/CallForwardEditPreference;I)I

    .line 88
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    #setter for: Lcom/android/phone/CallForwardEditPreference;->mAddModifyCount:I
    invoke-static {v0, p4}, Lcom/android/phone/CallForwardEditPreference;->access$502(Lcom/android/phone/CallForwardEditPreference;I)I

    .line 90
    :cond_0
    return-void
.end method
