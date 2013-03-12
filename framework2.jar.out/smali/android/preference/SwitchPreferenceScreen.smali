.class public Landroid/preference/SwitchPreferenceScreen;
.super Landroid/preference/SwitchPreference;
.source "SwitchPreferenceScreen.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/SwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/SwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget-object v2, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, fragment:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    :cond_0
    const-string v2, "SwitchPreferenceScreen"

    const-string v3, "SwitchPreferenceScreen should get fragment property. Fragment property does not exsit in SwitchPreferenceScreen"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
