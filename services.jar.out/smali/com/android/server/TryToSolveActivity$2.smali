.class Lcom/android/server/TryToSolveActivity$2;
.super Landroid/database/ContentObserver;
.source "TryToSolveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TryToSolveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TryToSolveActivity;


# direct methods
.method constructor <init>(Lcom/android/server/TryToSolveActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/server/TryToSolveActivity$2;->this$0:Lcom/android/server/TryToSolveActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/TryToSolveActivity$2;->this$0:Lcom/android/server/TryToSolveActivity;

    # getter for: Lcom/android/server/TryToSolveActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/TryToSolveActivity;->access$200(Lcom/android/server/TryToSolveActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 102
    return-void
.end method
