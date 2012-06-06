.class final enum Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;

.field public static final enum SYSTEM:Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;

.field public static final enum USER:Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;


# instance fields
.field private final mCheckbox:Z

.field private final mIcon:I

.field private final mLabel:I

.field private final mList:I

.field private final mProgress:I

.field private final mTag:Ljava/lang/String;

.field private final mView:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;

    const-string v1, "SYSTEM"

    const-string v3, "system"

    const v4, 0x7f0b0694

    const v5, 0x7f0801c1

    const v6, 0x7f0801c2

    const v7, 0x7f0801c3

    const v9, 0x7f02012f

    invoke-direct/range {v0 .. v9}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIZI)V

    sput-object v0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;

    .line 62
    new-instance v6, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;

    const-string v7, "USER"

    const-string v9, "user"

    const v10, 0x7f0b0695

    const v11, 0x7f0801c4

    const v12, 0x7f0801c5

    const v13, 0x7f0801c6

    const v15, 0x7f020130

    move v14, v2

    invoke-direct/range {v6 .. v15}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIZI)V

    sput-object v6, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;

    sget-object v1, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIZI)V
    .locals 0
    .parameter
    .parameter
    .parameter "tag"
    .parameter "label"
    .parameter "view"
    .parameter "progress"
    .parameter "list"
    .parameter "checkbox"
    .parameter "icon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIZI)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-object p3, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    .line 79
    iput p4, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->mLabel:I

    .line 80
    iput p5, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->mView:I

    .line 81
    iput p6, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->mProgress:I

    .line 82
    iput p7, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->mList:I

    .line 83
    iput-boolean p8, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    .line 84
    iput p9, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->mIcon:I

    .line 85
    return-void
.end method

.method static synthetic access$1900(Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->mProgress:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)Ljava/util/Set;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->getAliases(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->deleted(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->getButtonLabel(Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;ZLcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->postOperationUpdate(ZLcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->mView:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->mLabel:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->mIcon:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->mList:I

    return v0
.end method

.method private deleted(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/lang/String;)Z
    .locals 3
    .parameter "store"
    .parameter "alias"

    .prologue
    const/4 v0, 0x0

    .line 96
    sget-object v1, Lcom/android/OriginalSettings/TrustedCredentialsSettings$4;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 102
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 98
    :pswitch_0
    invoke-virtual {p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 100
    :cond_0
    :pswitch_1
    return v0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAliases(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)Ljava/util/Set;
    .locals 2
    .parameter "store"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    sget-object v0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$4;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 93
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->allSystemAliases()Ljava/util/Set;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonConfirmation(Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 2
    .parameter "certHolder"

    .prologue
    .line 117
    sget-object v0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$4;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 126
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :pswitch_0
    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const v0, 0x7f0b0699

    .line 124
    :goto_0
    return v0

    .line 122
    :cond_0
    const v0, 0x7f0b069a

    goto :goto_0

    .line 124
    :pswitch_1
    const v0, 0x7f0b069b

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonLabel(Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 2
    .parameter "certHolder"

    .prologue
    .line 105
    sget-object v0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$4;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 114
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 107
    :pswitch_0
    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const v0, 0x7f0b0697

    .line 112
    :goto_0
    return v0

    .line 110
    :cond_0
    const v0, 0x7f0b0696

    goto :goto_0

    .line 112
    :pswitch_1
    const v0, 0x7f0b0698

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private postOperationUpdate(ZLcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 1
    .parameter "ok"
    .parameter "certHolder"

    .prologue
    .line 129
    if-eqz p1, :cond_2

    .line 130
    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;
    invoke-static {p2}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    if-eqz v0, :cond_1

    .line 131
    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p2}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p2, v0}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;->access$002(Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;Z)Z

    .line 135
    :goto_1
    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-static {p2}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->notifyDataSetChanged()V

    .line 140
    :goto_2
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :cond_1
    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-static {p2}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    move-result-object v0

    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;
    invoke-static {v0}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$300(Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 138
    :cond_2
    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-static {p2}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    move-result-object v0

    #calls: Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->load()V
    invoke-static {v0}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$400(Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V

    goto :goto_2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;
    .locals 1
    .parameter

    .prologue
    .line 54
    const-class v0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method public static values()[Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;

    invoke-virtual {v0}, [Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method
