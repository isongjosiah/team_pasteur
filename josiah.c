# include <stdio.h>
# include <string.h>
# define slack "Josiah"
# define twitter "otu-ekong"
# define MAX(x, y) (((x) > (y)) ? (x): (y)) // Function to calculate maximum value since C doesn't have an inbuilt function


int calculate_hamming_dist() {
    int i;
    int count = 0;
    int max_length = MAX(strlen(slack), strlen(twitter));
    for (i=0; i < max_length; i++){
        if (slack[i] != twitter[i]) {
            count++;
        }
    }
    return count;
}

int main (int argc, char *argv[]) {
    printf("Isong Josiah, isongjosiah@gmail.com, @%s,  Drug development, %d, @%s\n",slack, calculate_hamming_dist(), twitter);
}