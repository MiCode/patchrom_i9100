.class Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;
.super Landroid/text/method/DialerKeyListener;
.source "DTMFTwelveKeyDialerForVT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DTMFTwelveKeyDialerForVT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DTMFKeyListener"
.end annotation


# instance fields
.field public final DTMF_CHARACTERS:[C

.field final synthetic this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;


# direct methods
.method private constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    .line 203
    invoke-direct {p0}, Landroid/text/method/DialerKeyListener;-><init>()V

    .line 374
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->DTMF_CHARACTERS:[C

    .line 204
    return-void

    .line 374
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x23t 0x0t
        0x2at 0x0t
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V

    return-void
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->DTMF_CHARACTERS:[C

    return-object v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 247
    invoke-virtual {p0, p4, p2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v2

    int-to-char v0, v2

    .line 250
    .local v0, c:C
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->ok([CC)Z

    move-result v1

    .line 256
    .local v1, keyOK:Z
    if-eqz v1, :cond_0

    .line 258
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->processDtmf(C)V
    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$000(Lcom/android/phone/DTMFTwelveKeyDialerForVT;C)V

    .line 262
    :cond_0
    const/4 v2, 0x1

    .line 264
    .end local v1           #keyOK:Z
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 276
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 279
    invoke-virtual {p0, p4, p2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v2

    int-to-char v0, v2

    .line 281
    .local v0, c:C
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->ok([CC)Z

    move-result v1

    .line 283
    .local v1, keyOK:Z
    if-eqz v1, :cond_0

    .line 285
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopTone()V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$100(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V

    .line 286
    const/4 v2, 0x1

    .line 289
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
