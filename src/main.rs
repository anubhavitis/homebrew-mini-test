use clap::Parser;

#[derive(Parser, Debug)]
#[command(author, version, about, long_about = None)]
pub struct Args {
    /// Level flag
    #[arg(short = 'l', default_value = "7")]
    level: u32,

    /// Category flag
    #[arg(short = 'c', default_value = "|")]
    category: char,

    #[arg(short = 'r', default_value = "false")]
    reverse: bool,
}

impl Args {
    fn inner(&self, i: u32) {
        for j in 0..(self.level - 1) {
            if j + i >= self.level - 1 {
                print!("{} ", self.category);
            } else {
                print!("  ");
            }
        }

        for _ in 0..(i + 1) {
            print!("{} ", self.category);
        }

        println!();
    }
    pub fn execute(&self) {
        if self.reverse {
            for i in (0..self.level).rev() {
                self.inner(i);
            }
        } else {
            for i in 0..self.level {
                self.inner(i);
            }
        }
    }
}

fn main() {
    let args = Args::parse();
    args.execute();
}
