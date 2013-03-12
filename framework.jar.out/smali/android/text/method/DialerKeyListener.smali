.class public Landroid/text/method/DialerKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DialerKeyListener.java"


# static fields
.field public static final CHARACTERS:[C

.field private static sInstance:Landroid/text/method/DialerKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0x16

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/method/DialerKeyListener;->CHARACTERS:[C

    return-void

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
        0x2bt 0x0t
        0x2dt 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2ct 0x0t
        0x2ft 0x0t
        0x4et 0x0t
        0x2et 0x0t
        0x20t 0x0t
        0x3bt 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/DialerKeyListener;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Landroid/text/method/DialerKeyListener;->sInstance:Landroid/text/method/DialerKeyListener;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Landroid/text/method/DialerKeyListener;->sInstance:Landroid/text/method/DialerKeyListener;

    .line 44
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v0, Landroid/text/method/DialerKeyListener;

    invoke-direct {v0}, Landroid/text/method/DialerKeyListener;-><init>()V

    sput-object v0, Landroid/text/method/DialerKeyListener;->sInstance:Landroid/text/method/DialerKeyListener;

    .line 44
    sget-object v0, Landroid/text/method/DialerKeyListener;->sInstance:Landroid/text/method/DialerKeyListener;

    goto :goto_0
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 36
    sget-object v0, Landroid/text/method/DialerKeyListener;->CHARACTERS:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x3

    return v0
.end method

.method protected lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .locals 8
    .parameter "event"
    .parameter "content"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    invoke-static {p2}, Landroid/text/method/DialerKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v7

    or-int v4, v6, v7

    .line 57
    .local v4, meta:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getNumber()C

    move-result v5

    .line 63
    .local v5, number:I
    and-int/lit8 v6, v4, 0x3

    if-nez v6, :cond_1

    .line 64
    if-eqz v5, :cond_1

    .line 100
    .end local v5           #number:I
    :cond_0
    :goto_0
    return v5

    .line 69
    .restart local v5       #number:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/text/method/NumberKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v3

    .line 71
    .local v3, match:I
    if-eqz v3, :cond_2

    move v5, v3

    .line 72
    goto :goto_0

    .line 81
    :cond_2
    if-eqz v4, :cond_0

    .line 82
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 83
    .local v2, kd:Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p0}, Landroid/text/method/DialerKeyListener;->getAcceptedChars()[C

    move-result-object v0

    .line 85
    .local v0, accepted:[C
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 86
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    iget-object v6, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 87
    iget-object v6, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v6, v6, v1

    invoke-static {v0, v6}, Landroid/text/method/DialerKeyListener;->ok([CC)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 88
    iget-object v6, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v5, v6, v1

    goto :goto_0

    .line 86
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
