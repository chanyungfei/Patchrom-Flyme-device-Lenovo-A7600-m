.class Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3$2;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3$2;->this$1:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 467
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 468
    return-void
.end method
