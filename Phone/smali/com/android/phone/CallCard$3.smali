.class Lcom/android/phone/CallCard$3;
.super Landroid/os/CountDownTimer;
.source "CallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCard;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCard;JJLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 1580
    iput-object p1, p0, Lcom/android/phone/CallCard$3;->this$0:Lcom/android/phone/CallCard;

    iput-object p6, p0, Lcom/android/phone/CallCard$3;->val$name:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .prologue
    .line 1591
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .parameter "millisUntilFinished"

    .prologue
    .line 1582
    iget-object v1, p0, Lcom/android/phone/CallCard$3;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$300(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1583
    .local v0, textViewName:Ljava/lang/String;
    const-wide/32 v1, 0x48ff8

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 1589
    :goto_0
    return-void

    .line 1585
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallCard$3;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1586
    iget-object v1, p0, Lcom/android/phone/CallCard$3;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$300(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt;->mContactName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1588
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard$3;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$300(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCard$3;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
