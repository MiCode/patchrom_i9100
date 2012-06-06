.class Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "AccessibilityEnableScriptInjectionPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInjectionAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 149
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState;->mInjectionAllowed:Z

    .line 151
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState;->mInjectionAllowed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState;->mInjectionAllowed:Z

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 156
    iget-boolean v0, p0, Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState;->mInjectionAllowed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
