.class Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;
.super Ljava/lang/Object;
.source "ChooseAccountActivity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/ChooseAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String;

.field private final name:Ljava/lang/CharSequence;

.field private final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .parameter "providerName"
    .parameter "accountType"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "com.osp.app.signin"

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;

    .line 78
    iput-object p2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)I
    .locals 4
    .parameter "another"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 83
    const-string v2, "com.osp.app.signin"

    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    const-string v2, "com.osp.app.signin"

    iget-object v3, p1, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 87
    goto :goto_0

    .line 91
    :cond_2
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 94
    iget-object v0, p1, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    move v0, v1

    .line 95
    goto :goto_0

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    check-cast p1, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->compareTo(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)I

    move-result v0

    return v0
.end method
