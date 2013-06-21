#include <iostream>
#include <string>

using namespace std;

int main(){
  string word;
  unsigned n;
  while(cin >> n >> word)
    for(int i=0; i<n*n; ++i)
      cout << word << " ";
}
