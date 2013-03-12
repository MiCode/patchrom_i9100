.class Landroid/widget/ProgressBar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/ProgressBar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field progress:I

.field secondaryProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1127
    new-instance v0, Landroid/widget/ProgressBar$SavedState$1;

    invoke-direct {v0}, Landroid/widget/ProgressBar$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/ProgressBar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 1115
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$SavedState;->progress:I

    .line 1117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    .line 1118
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/ProgressBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1100
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 1108
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1109
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 1122
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1123
    iget v0, p0, Landroid/widget/ProgressBar$SavedState;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1124
    iget v0, p0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1125
    return-void
.end method
