.class synthetic Lb2/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field synthetic val$popup:Lb2/a;


# direct methods
.method constructor <init>(Lb2/a;)V
    .registers 2

    iput-object p1, p0, Lb2/a$1;->val$popup:Lb2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lb2/a$1;->val$popup:Lb2/a;

    invoke-virtual {v0}, Lb2/a;->rebuildViews()V

    return-void
.end method
