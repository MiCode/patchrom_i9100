.class public Lcom/android/phone/DTMFTwelveKeyDialerForVT;
.super Ljava/lang/Object;
.source "DTMFTwelveKeyDialerForVT.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;
    }
.end annotation


# static fields
.field private static final mDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final mToneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDTMFBurstCnfPending:Z

.field private mDTMFQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private mDTMFToneEnabled:Z

.field private mDTMFToneType:I

.field private mDialerDrawer:Landroid/widget/SlidingDrawer;

.field private mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

.field private mDialpadDigits:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mVTManager:Lsiso/vt/VTManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x32

    const/16 v6, 0x31

    const/16 v5, 0x30

    const/16 v4, 0x2a

    const/16 v3, 0x23

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    .line 92
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f09006e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f09006f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090070

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090071

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090072

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090073

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090074

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090075

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090076

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090078

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090079

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090077

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/android/phone/InVTCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;Landroid/widget/SlidingDrawer;)V
    .locals 5
    .parameter "parent"
    .parameter "dialerView"
    .parameter "dialerDrawer"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGeneratorLock:Ljava/lang/Object;

    .line 69
    iput-object v4, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mVTManager:Lsiso/vt/VTManager;

    .line 74
    iput-boolean v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFBurstCnfPending:Z

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFQueue:Ljava/util/Queue;

    .line 382
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;

    invoke-direct {v0, p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mHandler:Landroid/os/Handler;

    .line 418
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    .line 419
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 423
    if-nez p2, :cond_0

    .line 424
    const-string v0, "DTMFTwelveKeyDialerForVT"

    const-string v1, "DTMFTwelveKeyDialer: null dialerView!"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    :cond_0
    iput-object p2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    .line 431
    iput-object p3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    .line 434
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-virtual {v0, p0}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->setDialer(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V

    .line 442
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mDialerEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    .line 446
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 447
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;

    invoke-direct {v0, p0, v4}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;

    .line 448
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 452
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-direct {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setupKeypad(Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;)V

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_3

    .line 464
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, p0}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 465
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, p0}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 468
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DTMFTwelveKeyDialerForVT;C)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->processDtmf(C)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopTone()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private onDialerClose()V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 568
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->onDialerClose()V

    .line 569
    return-void
.end method

.method private onDialerOpen()V
    .locals 4

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 510
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->onDialerOpen()V

    .line 511
    return-void
.end method

.method private final processDtmf(C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 815
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 833
    :cond_0
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 835
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->startTone(C)V

    .line 842
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 843
    return-void
.end method

.method private sendShortDtmfToNetwork(C)V
    .locals 4
    .parameter "dtmfDigit"

    .prologue
    const/4 v3, 0x1

    .line 1026
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v2

    .line 1027
    :try_start_0
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFBurstCnfPending:Z

    if-ne v1, v3, :cond_0

    .line 1029
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFQueue:Ljava/util/Queue;

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1038
    :goto_0
    monitor-exit v2

    .line 1039
    return-void

    .line 1031
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 1036
    .local v0, dtmfStr:Ljava/lang/String;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFBurstCnfPending:Z

    goto :goto_0

    .line 1038
    .end local v0           #dtmfStr:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setupKeypad(Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;)V
    .locals 4
    .parameter "dialerView"

    .prologue
    .line 610
    sget-object v3, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 612
    .local v2, viewId:I
    invoke-virtual {p1, v2}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 614
    .local v0, button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 615
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 616
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0

    .line 618
    .end local v0           #button:Landroid/view/View;
    .end local v2           #viewId:I
    :cond_0
    return-void
.end method

.method private startTone(C)V
    .locals 4
    .parameter "c"

    .prologue
    .line 950
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 951
    .local v0, phoneType:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 952
    invoke-virtual {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->startDtmfTone(C)V

    .line 958
    :goto_0
    return-void

    .line 953
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 954
    invoke-virtual {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->startToneCdma(C)V

    goto :goto_0

    .line 956
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private stopTone()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 964
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 965
    .local v0, phoneType:I
    if-ne v0, v2, :cond_1

    .line 966
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopDtmfTone()V

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 969
    iget v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneType:I

    if-ne v1, v2, :cond_0

    .line 970
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopToneCdma()V

    goto :goto_0

    .line 973
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private stopToneCdma()V
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 1049
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopLocalToneCdma()V

    .line 1050
    return-void
.end method


# virtual methods
.method public closeDialer(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_2

    .line 764
    if-eqz p1, :cond_1

    .line 765
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateToggle()V

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->toggle()V

    goto :goto_0

    .line 773
    :cond_2
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->setVisibility(I)V

    .line 778
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onDialerClose()V

    goto :goto_0
.end method

.method handleBurstDtmfConfirmation()V
    .locals 4

    .prologue
    .line 1074
    const/4 v1, 0x0

    .line 1075
    .local v1, dtmfChar:Ljava/lang/Character;
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v3

    .line 1076
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFBurstCnfPending:Z

    .line 1077
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1078
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Character;

    move-object v1, v0

    .line 1081
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1082
    if-eqz v1, :cond_1

    .line 1083
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->sendShortDtmfToNetwork(C)V

    .line 1085
    :cond_1
    return-void

    .line 1081
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    .line 709
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrawerClosed()V
    .locals 0

    .prologue
    .line 805
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onDialerClose()V

    .line 806
    return-void
.end method

.method public onDrawerOpened()V
    .locals 0

    .prologue
    .line 798
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onDialerOpen()V

    .line 799
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 676
    const/16 v1, 0x17

    if-ne p2, v1, :cond_0

    .line 677
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 678
    .local v0, viewId:I
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 693
    .end local v0           #viewId:I
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 681
    .restart local v0       #viewId:I
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 682
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->processDtmf(C)V

    goto :goto_0

    .line 686
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopTone()V

    goto :goto_0

    .line 679
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 625
    packed-switch p1, :pswitch_data_0

    .line 633
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InVTCallScreen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 630
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->closeDialer(Z)V

    goto :goto_0

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InVTCallScreen;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 648
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 651
    .local v0, viewId:I
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 667
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 656
    :pswitch_1
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->processDtmf(C)V

    goto :goto_0

    .line 661
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopTone()V

    goto :goto_0

    .line 652
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public openDialer(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_2

    .line 733
    if-eqz p1, :cond_1

    .line 734
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateToggle()V

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->toggle()V

    goto :goto_0

    .line 742
    :cond_2
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->setVisibility(I)V

    .line 747
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onDialerOpen()V

    goto :goto_0
.end method

.method public setHandleVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    .line 790
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 792
    :cond_0
    return-void

    .line 790
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setVTManagerInstance(Lsiso/vt/VTManager;)V
    .locals 0
    .parameter "vtManager"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mVTManager:Lsiso/vt/VTManager;

    .line 188
    return-void
.end method

.method public startDialerSession()V
    .locals 5

    .prologue
    .line 533
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneEnabled:Z

    .line 540
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneEnabled:Z

    if-eqz v1, :cond_1

    .line 541
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 542
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 544
    :try_start_1
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v3, 0x8

    const/16 v4, 0x50

    invoke-direct {v1, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 550
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 552
    :cond_1
    return-void

    .line 545
    :catch_0
    move-exception v0

    .line 547
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    .line 550
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method startDtmfTone(C)V
    .locals 4
    .parameter "tone"

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mVTManager:Lsiso/vt/VTManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsiso/vt/VTManager;->sendDTMF(Ljava/lang/String;I)V

    .line 891
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_0

    .line 892
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 893
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_1

    .line 899
    :goto_0
    monitor-exit v1

    .line 901
    :cond_0
    return-void

    .line 897
    :cond_1
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_0

    .line 899
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startLocalToneCdma(C)V
    .locals 5
    .parameter "tone"

    .prologue
    .line 1002
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneEnabled:Z

    if-eqz v1, :cond_0

    .line 1003
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1004
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_1

    .line 1016
    :goto_0
    monitor-exit v2

    .line 1018
    :cond_0
    return-void

    .line 1010
    :cond_1
    const/4 v0, -0x1

    .line 1011
    .local v0, toneDuration:I
    iget v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneType:I

    if-nez v1, :cond_2

    .line 1012
    const/16 v0, 0x78

    .line 1014
    :cond_2
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1, v0}, Landroid/media/ToneGenerator;->startTone(II)Z

    goto :goto_0

    .line 1016
    .end local v0           #toneDuration:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method startToneCdma(C)V
    .locals 3
    .parameter "tone"

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dtmf_tone_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneType:I

    .line 986
    iget v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneType:I

    if-nez v0, :cond_0

    .line 987
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->sendShortDtmfToNetwork(C)V

    .line 994
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->startLocalToneCdma(C)V

    .line 995
    return-void

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    goto :goto_0
.end method

.method stopDtmfTone()V
    .locals 2

    .prologue
    .line 920
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_0

    .line 921
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 922
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_1

    .line 928
    :goto_0
    monitor-exit v1

    .line 930
    :cond_0
    return-void

    .line 926
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_0

    .line 928
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method stopLocalToneCdma()V
    .locals 2

    .prologue
    .line 1058
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_0

    .line 1059
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1060
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_1

    .line 1066
    :goto_0
    monitor-exit v1

    .line 1068
    :cond_0
    return-void

    .line 1064
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_0

    .line 1066
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
