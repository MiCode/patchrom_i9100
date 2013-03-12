.class Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->onSimLockChangedResponse(Z)V

    .line 275
    return-void
.end method
